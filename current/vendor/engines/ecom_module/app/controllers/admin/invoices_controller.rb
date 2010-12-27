class Admin::InvoicesController < Admin::ApplicationController

	# GET /Invoices
  # GET /Invoices.xml
  def index
		if @current_user.has_system_role('admin')
			@current_objects = Invoice.find(:all)
		else
			@current_objects = Invoice.find(:all, :conditions => { :client_id => @current_user.id })
		end
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @current_objects }
    end
  end

  # GET /Invoices/1
  # GET /Invoices/1.xml
  def show
    @current_object = Invoice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @current_object }
			format.pdf { render :layout => false, :file => "#{RAILS_ROOT}/public/pdf_invoice/#{@current_object.id}invoice.pdf", :type => "application/pdf" }
    end
  end

  # GET /Invoices/new
  # GET /Invoices/new.xml
  def new
    @current_object = Invoice.new
    @profile = Profile.find(params[:id])
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @current_object }
    end
  end

  # GET /Invoices/1/edit
  def edit
    @current_object = Invoice.find(params[:id])
    @profile = Profile.find(@current_object.client.id)
		respond_to do |format|
      format.html # edit.html.erb
      format.xml  { render :xml => @current_object }
    end
  end

  # POST /Invoices
  # POST /Invoices.xml
  def create
    @current_object = Invoice.new(params[:invoice])
		@current_object.final_amount ||= @current_object.original_amount
		@current_object.state = 'created'
		@current_object.creator_id = @current_user.id
    respond_to do |format|
      if @current_object.save
        flash[:notice] = 'Invoice was successfully created.'
        format.html { redirect_to admin_invoice_url(@current_object) }
        format.xml  { render :xml => @current_object, :status => :created, :location => @current_object }
      else
				raise @current_object.errors.inspect
				flash[:error] = 'Invoice was not created.'
        format.html { render :action => "new" }
        format.xml  { render :xml => @current_object.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /Invoices/1
  # PUT /Invoices/1.xml
  def update
    @current_object = Invoice.find(params[:id])
    respond_to do |format|
      if @current_object.update_attributes(params[:invoice])
        flash[:notice] = 'Invoice was successfully updated.'
        format.html { redirect_to admin_invoice_url(@current_object) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @current_object.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /Invoices/1
  # DELETE /Invoices/1.xml
  def destroy
    @current_object = Invoice.find(params[:id])
    @current_object.destroy
    respond_to do |format|
      format.html { redirect_to(admin_invoices_url) }
      format.xml  { head :ok }
    end
  end

	def update_state
		@current_object = Invoice.find(params[:id])
		if params[:state] == 'sent'
			@current_object.sending_to_client
		end
		if params[:state] == 'validated' && @current_user.has_system_role('admin')
			@current_object.validating
		end
		redirect_to admin_invoice_url(@current_object)
	end

	def invoicing
	  if  params[:show_layout] == "true"
	  layout =  true   
	  else
	  layout =  false  	 
	  end
		@order = params[:purchasable_type].classify.constantize.find(params[:purchasable_id])
        
        total_amount = 0
        
		@order.invoices.each {|x| total_amount = total_amount + x.final_amount}
		  
        
		if  @order.instance_of? CompetitionsUser
		        if total_amount  == @order.find_price(@order.competition.id) 
			        flash[:notice] = 'Your Payment Is Done No Due Is Remaining'
			        render :text => @template.blank_main_div(:title => 'System error', :hsize => 'sixH', :modal => true), :layout =>  layout
			
		        elsif total_amount  < @order.find_price(@order.competition.id) 
			        session[:purchasable] = @order
			        @credit_card = CreditCard.new
			        render :partial => 'admin/invoices/invoicing', :layout =>layout
		        else
			        flash[:error] = 'There is error on server please try again'
			        render :text => @template.blank_main_div(:title => 'System error', :hsize => 'sixH', :modal => true), :layout =>  layout
		        end
		else
		        if @order.invoices.first
			flash[:error] = 'Invoice already generated, refresh the page with F5'
			
			render :text => @template.blank_main_div(:title => 'System error', :hsize => 'sixH', :modal => true), :layout =>  layout
			
		else
			session[:purchasable] = @order
			@credit_card = CreditCard.new
			render :partial => 'admin/invoices/invoicing', :layout =>layout
			
		end
		end
	
	
	end

	
	def generate_invoice
		#raise params.inspect
		@order = session[:purchasable]
		p"==============================#{session[:purchasable].inspect}"
		if @order and @order.invoices.first
			flash[:error] = "Invoice already generated, refresh the page with F5"
			render :text => @template.blank_main_div(:title => 'System error', :hsize => 'sixH', :modal => true), :layout => false
		else
			# TODO check the invoicing params
			if params[:invoicing_info]
				session[:purchasable] = nil
   		        # @invoice = @order.generate_invoice(@current_user, params[:invoicing_info])
				flash[:notice] = "Invoice created !!!"
				render :partial => 'admin/invoices/invoice_show', :layout => false, :locals => { :current_object => @invoice, :is_modal => true }
			else
				flash[:error] = "Error creating invoice !!!"
				render :partial => 'admin/invoices/invoicing', :layout => false
			end
		end
#		if @invoice.payment_medium == 'online'
#			#redirect_to new_admin_payment_url(:iid => @invoice.id)
#			render :partial => 'admin/payments/new', :layout => false
#		else
#			redirect_to admin_invoice_url(@invoice)
#		end
	end

	

end
