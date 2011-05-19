class ShoppingcartController < ApplicationController
  layout "front"
  
  
  def add_to_cart
    if params[:orderable_type].to_s.include? "CompetitionsUser"
      objekt = { "#{params[:orderable_type]}_#{params[:orderable_id]}_#{params[:eachimage]}" => params[:number]}
    else
      objekt = { "#{params[:orderable_type]}_#{params[:orderable_id]}" => params[:number]}
    end  
		if session[:cart].merge!(objekt)
  		msg = "Product added to the cart"
		else
			msg = "Error ading product to the cart"
		end
    render :update do |page|
      if params[:orderable_type].to_s.include? "CompetitionsUser"
         page["shoppingcartlink#{params[:orderable_id]}#{params[:orderable_type]}#{params[:eachimage]}"].replace_html msg
      else
        page["shoppingcartlink#{params[:orderable_id]}#{params[:orderable_type]}"].replace_html msg
      end
  end 
  end
  
  def remove_from_cart
    
    if params[:orderable_type].to_s.include? "CompetitionsUser"
      session[:cart].delete("#{params[:orderable_type]}_#{params[:orderable_id]}_#{params[:imagename]}")
    else
      session[:cart].delete("#{params[:orderable_type]}_#{params[:orderable_id]}")
    end
		
   	@current_object = Order.new_from_cart(session[:cart], @current_user)
    render :update do |page|
      page["order#{params[:i]}"].hide
      page["total_amount"].replace_html "h #{@current_object.total_amount}  AUD<br />"
    end
	end
  
  def show_me_cart
    @current_object = Order.new_from_cart(session[:cart], @current_user)
  end

  def show_payment_form
      render :update do |page|
        page["add_the_artwork0"].replace_html :partial=>"shopping_payment"
        page["iteam_image0"].show
      end
  end
  
  def shopping_cart_payment
    p params[:invoicing_info][:payment_medium]
    if params[:invoicing_info][:payment_medium] == "online"
      makeshoppingcartpayment
      return
    end
    if params[:invoicing_info][:payment_medium] == "paypal"
      makeshoppingcartpaypalpayment
    end
  
  end
  
  def makeshoppingcartpayment
    	@current_object = Order.new_from_cart(session[:cart], @current_user)
      payment = Payment.new()
      payment.common_wealth_bank_process(@current_object.total_amount*100,params)
      if  payment.state == "online_validated"
          order = Order.complete_from_cart(session[:cart], @current_user)
          payment.invoice = order.generate_invoice(current_user, params[:invoicing_info])
          payment.user_id = current_user.id
          payment.save
          session[:cart] = {}
          render :text=>"Your Payment Is Done"
      else
          render :text=>"Please Check Your Details And Try Again"
      end      
  end
  
  def makeshoppingcartpaypalpayment
      
  end
  
  
  
  
end
