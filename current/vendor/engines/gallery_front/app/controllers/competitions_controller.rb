      class CompetitionsController < ApplicationController

	layout 'front'
 
 require "prawn"
 require "fastercsv" 
 require "rubygems"


        
  def show
          	@competitions = Competition.all.sort {|x,y| x.title <=> y.title }
		if params[:competition_id]
			@competition = Competition.find(params[:competition_id])
		else
			@competition = @competitions.first
		end
		if @competition
			# TODO publish rules ...
			if @competition.state == 'final_published'
                competitionuser = CompetitionsUser.find(:all,:include=>["artworks_competitions"],:conditions=>["competition_id = ?   ",@competition.id])
                @competitionuser  = []
                competitionuser.each do |ac| 
                ac.artworks_competitions.each do |x|  
                  if x.state == "selected"
                  @competitionuser  << x.competitions_user
                  end
               end 
               end
    
				#@artworks = @competition.artworks_competitions.all(:include => [:artwork], :order => "mark DESC").map{ |e| e.artwork }
			elsif @competition.state == 'results_publish'
				#@artworks = @competition.artworks_competitions.all(:include => [:artwork], :conditions => { :state => 'selected' }).map{ |e| e.artwork }
				 competitionuser = CompetitionsUser.find(:all,:include=>["artworks_competitions"],:conditions=>["competition_id = ?   ",@competition.id])
				 @competitionuser  = []
                competitionuser.each do |ac| 
                ac.artworks_competitions.each do |x|  
                  if x.state == "selected"
                  @competitionuser  << x.competitions_user
                  end
               end 
               end
			else
				#@artworks = @competition.artworks
				@competitionuser = CompetitionsUser.find(:all,:conditions=>["competition_id = ?   ",@competition.id])
			end
		end
	@competitionuser.uniq!
	
    end

	def create_subscribe_competition
		@competitionuser = CompetitionsUser.find_by_user_id_and_competition_id(current_user.id,params[:competion_id])
		if  @competitionuser.blank?
		    #  if   params[:competitions_user][:fworktitle].blank? or  params[:competitions_user][:fworkmedium].blank? or params[:competitions_user][:fworksize1].blank?  or  params[:competitions_user][:fworksize2].blank?  or  params[:competitions_user][:fworksize3].blank?  or  params[:competitions_user][:fworkprice].blank?      
			#      flash[:notice]="Please Enter Fields Mark With * "
			#      redirect_to :back
			#      return
		    #  end
             size_array_send = ['fworksize=','sworksize=','tworksize=','foworksize=','fiworksize=','siworksize=','seworksize=','eworksize=','nworksize=','teworksize=']
  		    size_array = ['fworksize','sworksize','tworksize','foworksize','fiworksize','siworksize','seworksize','eworksize','nworksize','teworksize']

		    #return_for_size = false;      
		      #for entry in 1...params[:competitions_user][:total_entry].to_i
		      #        for  i in 1..3
		      #            if(params[:competitions_user][size_array[entry]+i.to_s].blank?)
		      #            return_for_size = true;
		       #           end
		       #       end  
		              
		     # end
		# if(return_for_size)    
		#     flash[:notice] = "Please Enter The Size Field Properly"
		  #    redirect_to :back
		  #   return
		# end

	   if  params[:competitions_user][:payment_type]	  == "Credit Card"
		 if  params[:competitions_user][:card_name].blank? or  params[:competitions_user][:card_number1].blank? or params[:competitions_user][:card_number2].blank? or params[:competitions_user][:card_number3].blank?  or params[:competitions_user][:card_number4].blank?   or params[:competitions_user][:varification_code].blank? or  params[:competitions_user][:exp_date1].blank? or  params[:competitions_user][:exp_date2].blank?  
  		     flash[:notice] = "Please Enter The Credit Card Details"
  		     redirect_to :back
  		     return
  		 end 
		end 
 	   		@competitionuser = CompetitionsUser.new(params[:competitions_user])
		    @competitionuser.email = params[:competitions_user][:email]
		    @competitionuser.name = params[:competitions_user][:name]
		    @competitionuser.suburb = params[:competitions_user][:suburb]
		    @competitionuser.address = params[:competitions_user][:address]
		    @competitionuser.post_code = params[:competitions_user][:post_code]
		    @competitionuser.here_prize = params[:competitions_user][:here_prize]
		    @competitionuser.others = params[:competitions_user][:others]
		    @competitionuser.total_entry = params[:competitions_user][:total_entry]
		    @competitionuser.payment_type = params[:competitions_user][:payment_type]
		    @competitionuser.card_name = params[:competitions_user][:card_name]
		    @competitionuser.biography = params[:competitions_user][:biography]
		    @competitionuser.return_of_artwork = params[:competitions_user][:return_of_artwork]
		    @competitionuser.bank_account = params[:competitions_user][:bank_account]
		    @competitionuser.bsb_no = params[:competitions_user][:bsb_no]
		    @competitionuser.varification_code = params[:competitions_user][:varification_code]
	        @competitionuser.card_number = params[:competitions_user][:card_number1] + params[:competitions_user][:card_number2] + params[:competitions_user][:card_number3] + params[:competitions_user]["card_number4"]	
	         		    i=0
    			size_array_send.each do |size|
        			@competitionuser.send(size.to_sym,params[:competitions_user][size_array[i]+"1"] + params[:competitions_user][size_array[i]+"2"] + params[:competitions_user][size_array[i]+"3"])
        		    i=i+1
    		    end
              title_array = ['fworktitle=','sworktitle=','tworktitle=','foworktitle=','fiworktitle=','siworktitle=','seworktitle=','eworktitle=','nworktitle=','teworktitle=']
              i=0
              title_array.each do |title|
              @competitionuser.send(title.to_sym,params[:competitions_user][title[0..title.length-2]])
        		    i=i+1
              end
            medium_array = ['fworkmedium=','sworkmedium=','tworkmedium=','foworkmedium=','fiworkmedium=','siworkmedium=','seworkmedium=','eworkmedium=','nworkmedium=','teworkmedium=']
			i=0
			medium_array.each do |medium|
			@competitionuser.send(medium.to_sym,params[:competitions_user][medium[0..medium.length-2]])
			i=i+1
			end
			price_array = ['fworkprice=','sworkprice=','tworkprice=','foworkprice=','fiworkprice=','siworkprice=','seworkprice=','eworkprice=','nworkprice=','teworkprice=']
			i=0
			price_array.each do |price|
			@competitionuser.send(price.to_sym,params[:competitions_user][price[0..price.length-2]])
			i=i+1
			end
			@competitionuser.exp_date = params[:competitions_user][:exp_date1] + params[:competitions_user][:exp_date2]
			@competitionuser.user_id = current_user.id
			@competitionuser.competition_id = params[:competion_id]
			@competitionuser.price = 0
			@competitionuser.save_image(params[:competitions_user])
			@competitionuser.state =  "accepted" 
			@competitionuser.save
   	   
   	   
   	   
			
			
			

			

   	   
   	   
   	   flash[:notice] = "You Are Added As Competition User"
			@current_object = @competitionuser#Competition.find(params[:competionid])
		else
		@current_object = @competitionuser	
		
		 
		
		end	
		render	:layout =>"gallery_promoting"  
	end	
	
	def confirm_competition_subscription_details
		@competitionuser = CompetitionsUser.find(params[:id])
		@competitionuser.confirm = true
		@competitionuser.state = 'accepted'
		@competitionuser.save
		#@competitionuser.generate_invoice#this is commented because of the invoice is get created after the payment
		#Notifier.deliver_subscription_detail_mail("mark@bsgart.com.au",current_user.email,"",current_user.profile.first_name + " " + current_user.profile.last_name ,@competitionuser.competition.title,@competitionuser.competition.submission_deadline)
	  #  invoice = Invoice.find(:first,:conditions=>["client_id = ? and purchasable_id = ?",@competitionuser.user_id,@competitionuser.id])
	#	create_pdf(invoice.id,invoice.number,invoice.sent_at.strftime("%d %b %Y"),invoice.client.profile.full_address_for_invoice,invoice.client.profile.full_name,@competitionuser.competition.title,invoice.final_amount)#the reason for comment is same as above as everything is done after payment is done
     	#here the artworks competition is get added by default it wiil be as same as users no. of entry field when he subscribe to competition
     	@competitionuser.submit_artwork
     	#Notifier.deliver_send_invoice(invoice,@competitionuser.user)
		#here need to check the invoice amount if it is already created and the amount is more then user should pay that much extra amount and vice a versa
		#QueuedMail.add('UserMailer', 'send_invoice',[invoice,@competitionuser.user], 0, true)	
    @order = @competitionuser
		@credit_card = CreditCard.new	
		session[:purchasable] = @competitionuser
     	#flash[:notice] = "Thanks For Entering A Competition"
		#redirect_to "/admin"
		#render	:layout =>"gallery_promoting"  

		if  @competitionuser.total_entry.to_i == 0
          render :update do |page|
		   page.redirect_to "/admin/competitions/#{@competitionuser.competition.id}"
          end
		end
	     total_amount = 0
	     @competitionuser.invoices.each {|x| total_amount = total_amount + x.final_amount}
		 if  total_amount  < @order.find_price(@order.competition.id) 
		else
		 @competitionuser.state = "validated"
		 @competitionuser.save
		render :update do |page|
		   page.redirect_to "/admin/competitions/#{@competitionuser.competition.id}"
          end
		end
	end	
	
	def  edit_competition_subscription_details
		@competitions_user = CompetitionsUser.find(params[:id])
		@competitions_user.confirm = false
		
		@competitions_user.state ="accepted"
		@competitions_user.save
		@current_object =  @competitions_user
		render	:layout =>"gallery_promoting" 
	end
	
	def update_subscribe_competition
	     	   if  params[:competitions_user][:payment_type]	  == "Credit Card"
		             if  params[:competitions_user][:card_name].blank? or  params[:competitions_user][:card_number1].blank? or params[:competitions_user][:card_number2].blank? or params[:competitions_user][:card_number3].blank?  or params[:competitions_user][:card_number4].blank? or params[:competitions_user][:varification_code].blank? or  params[:competitions_user][:exp_date1].blank? or  params[:competitions_user][:exp_date2].blank?
              		     flash[:notice] = "Please Enter The Credit Card Details"
  		                 redirect_to :back
  		                 return
  		            end 
		        end 
		 #  if  params[:competitions_user][:fworktitle].blank? or  params[:competitions_user][:fworkmedium].blank? or params[:competitions_user][:fworksize1].blank? or  params[:competitions_user][:fworksize2].blank? or  params[:competitions_user][:fworksize3].blank? or  params[:competitions_user][:fworkprice].blank?  
		#	      flash[:notice]="Please Enter Fields Mark With * "
		#	      redirect_to :back
		#	      return
		 #   end
   	         
   	    size_array_send = ['fworksize=','sworksize=','tworksize=','foworksize=','fiworksize=','siworksize=','seworksize=','eworksize=','nworksize=','teworksize=']
  		size_array = ['fworksize','sworksize','tworksize','foworksize','fiworksize','siworksize','seworksize','eworksize','nworksize','teworksize']	   
		#return_for_size = false;      
		#      for entry in 1...params[:competitions_user][:total_entry].to_i
		#              
		#              for  i in 1..3
		#                  if(params[:competitions_user][size_array[entry]+i.to_s].blank?)
		#                  return_for_size = true;
		#                  end
		#              end  
		              
		#      end
		# if(return_for_size)    
		#     flash[:notice] = "Please Enter The Size Field Properly"
		 #     redirect_to :back
		 #    return
		 #end
		    
		 @competitions_user = CompetitionsUser.find(params[:id])
	 	     i=0
    		size_array_send.each do |size|
        			@competitions_user.send(size.to_sym,params[:competitions_user][size_array[i]+"1"] + params[:competitions_user][size_array[i]+"2"] + params[:competitions_user][size_array[i]+"3"])
        		    i=i+1
    		end
		  title_array = ['fworktitle=','sworktitle=','tworktitle=','foworktitle=','fiworktitle=','siworktitle=','seworktitle=','eworktitle=','nworktitle=','teworktitle=']
              i=0
              title_array.each do |title|
              @competitions_user.send(title.to_sym,params[:competitions_user][title[0..title.length-2]])
        		    i=i+1
              end
            medium_array = ['fworkmedium=','sworkmedium=','tworkmedium=','foworkmedium=','fiworkmedium=','siworkmedium=','seworkmedium=','eworkmedium=','nworkmedium=','teworkmedium=']
			i=0
			medium_array.each do |medium|
			@competitions_user.send(medium.to_sym,params[:competitions_user][medium[0..medium.length-2]])
			i=i+1
			end
			price_array = ['fworkprice=','sworkprice=','tworkprice=','foworkprice=','fiworkprice=','siworkprice=','seworkprice=','eworkprice=','nworkprice=','teworkprice=']
			i=0
			price_array.each do |price|
			@competitions_user.send(price.to_sym,params[:competitions_user][price[0..price.length-2]])
			i=i+1
			end
		@competitions_user.update_attributes(params[:competitions_user])
		@competitions_user.card_number = params[:competitions_user][:card_number1] + params[:competitions_user][:card_number2] + params[:competitions_user][:card_number3] + params[:competitions_user][:card_number4]	
		@competitions_user.exp_date = params[:competitions_user][:exp_date1] + params[:competitions_user][:exp_date2]
		@competitions_user.total_entry = params[:competitions_user][:total_entry]
		@competitions_user.save_image(params[:competitions_user])
		@competitions_user.bsb_no = params[:competitions_user][:bsb_no]
		@competitions_user.competition_id = params[:competion_id]
      @competitions_user.email = params[:competitions_user][:email]
      @competitions_user.name = params[:competitions_user][:name]
		@competitions_user.suburb = params[:competitions_user][:suburb]
		@competitions_user.address = params[:competitions_user][:address]
		@competitions_user.post_code = params[:competitions_user][:post_code]
		@competitions_user.here_prize = params[:competitions_user][:here_prize]
		@competitions_user.others = params[:competitions_user][:others]
		@competitions_user.payment_type = params[:competitions_user][:payment_type]
		@competitions_user.card_name = params[:competitions_user][:card_name]
		@competitions_user.biography = params[:competitions_user][:biography]
		@competitions_user.return_of_artwork = params[:competitions_user][:return_of_artwork]
		@competitions_user.bank_account = params[:competitions_user][:bank_account]
		@competitions_user.varification_code = params[:competitions_user][:varification_code]
		@competitions_user.save
		#@competitions_user.generate_invoice_update(@competitions_user.user_id,@competitions_user.id)
		#Notifier.deliver_subscription_detail_mail("mark@bsgart.com.au",current_user.email,"",current_user.profile.first_name + " " + current_user.profile.last_name ,@competitionuser.competition.title,@competitionuser.competition.submission_deadline)
   	#invoice = Invoice.find(:first,:conditions=>["client_id = ? and purchasable_id = ?",@competitions_user.user_id,@competitions_user.id])
		#create_pdf(invoice.id,invoice.number,invoice.sent_at.strftime("%d %b %Y"),invoice.client.profile.full_address_for_invoice,invoice.client.profile.full_name,@competitions_user.competition.title,invoice.final_amount)
     	#Notifier.deliver_send_invoice(invoice,@competitionuser.user)
		#QueuedMail.add('UserMailer', 'send_invoice',[invoice,@competitions_user.user], 0, true)	
	    #email= UserMailer.create_send_invoice(invoice,@competitions_user.user)
	     #UserMailer.deliver(email)
	    flash[:notice]="You Have Succeffully Updated Competition subscription"
		redirect_to ("/admin/competitions/create_subscribe_competition/?competion_id=#{@competitions_user.competition_id}")
	end	
end
