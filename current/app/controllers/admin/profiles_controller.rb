class Admin::ProfilesController < Admin::ApplicationController

	acts_as_ajax_validation

  # GET /profiles
  # GET /profiles.xml
  def index
      if  current_user.login == "admin" || current_user.login == "superadmin"
		    @current_objects = Profile.superadmin_filtered.all(:order => 'first_name asc')
		    @num = @current_objects.size
        respond_to do |format|
          format.html # index.html.erb
          format.xml  { render :xml => @current_objects }
        end
     else
        flash[:notice] = "Please Login As Admin to View All The Users List"
        redirect_to "/admin"
     end   
        
  end

	def filter
		if params[:category_ids]
			@current_objects = []
			params[:category_ids].each do |cat|
				@current_objects += ProfilesCategory.find(:all, :conditions => { :category_id => cat.to_i }).map{ |e| e.profile }
			end
			@current_objects.uniq!
			# TODO integrate to searchable, special filter for join table :join_checking{ |model_join, ids| } field=name & jointable conventional
#			raise "tamerellepue"
		else
			@current_objects = Profile.find(:all, :order => 'first_name asc')
		end
		@num = @current_objects.size
		@filters = params[:category_ids].map{ |e| e.to_i }
		respond_to do |format|
      format.html { render :template => 'admin/profiles/index.html.erb'}
      format.xml  { render :xml => @current_objects }
    end
	end

  # GET /profiles/1
  # GET /profiles/1.xml
  def show
    @current_object = Profile.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @current_object }
    end
  end

     def exhibition_payment 
        exhibitionuser = ExhibitionsUser.find(params[:id])
        @invoice = Invoice.find(:first,:conditions=>["purchasable_type = ? and  client_id = ?  and purchasable_id = ? ","ExhibitionsUser" , exhibitionuser.user,exhibitionuser.id])
        if  @invoice != nil and @invoice.state == "created"
        else
        @invoice = Invoice.find(:last,:conditions=>["purchasable_type = ? and  client_id = ? and purchasable_id = ?","ExhibitionsUser" , exhibitionuser.user,exhibitionuser])
        end
        @order = exhibitionuser
    		@credit_card = CreditCard.new	
		    session[:purchasable] = exhibitionuser
		    render :partial=>"exhibitionpayment"
     end
     
     def exhibition_payment_front 
        exhibitionuser = ExhibitionsUser.find(params[:id])
        @invoice = Invoice.find(:first,:conditions=>["purchasable_type = ? and  client_id = ?  and purchasable_id = ? ","ExhibitionsUser" , exhibitionuser.user,exhibitionuser.id])
        if  @invoice != nil and @invoice.state == "created"
        else
        @invoice = Invoice.find(:last,:conditions=>["purchasable_type = ? and  client_id = ? and purchasable_id = ?","ExhibitionsUser" , exhibitionuser.user,exhibitionuser])
        end
        @order = exhibitionuser
    		@credit_card = CreditCard.new	
		    session[:purchasable] = exhibitionuser
		    #render :partial=>"exhibitionpaymentfront"
	  	  render :update do |page|
		        page["enterintocompetitionfront"].replace_html :partial=>"exhibitionpaymentfront",:locals=>  {:order=>@order,:invoice=>@invoice,:exhibitionuser=>exhibitionuser,:credit_card=>@credit_card}
		        page["description_competition_ex_py"].show
		        page["iteam_image_uploaded"].hide
		      
        end
     end
     
     
     
     
  # GET /profiles/new
  # GET /profiles/new.xml
  def new
    @current_object = Profile.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @current_object }
    end
  end

  # GET /profiles/1/edit
  def edit
    @current_object = Profile.find(params[:id])
    @role = Role.find(:all)
  end
    
  def edit_password
      render :action=>"password"  
  end  
  
  def change_password
      @user = User.find(params[:id])
      @user.password = params[:user][:password]
      @user.password_confirmation = params[:user][:password_confirmation]
      if @user.save
        flash[:notice] = "Password Has Been Changed For #{@user.profile.first_name} #{@user.profile.last_name}"
        redirect_to :back
      else
       
        flash[:notice] = "Password Has Not Been Changed"
      redirect_to :back
        
      end  
  end  
  
    

  
  # POST /profiles
  # POST /profiles.xml
  def create
    @current_object = Profile.new(params[:profile])
    respond_to do |format|
      if @current_object.save
		 @current_object.create_profile_workspace
        flash[:notice] = 'Profile was successfully created.'
        format.html { redirect_to admin_profile_path(@current_object.id) }
        format.xml  { render :xml => @current_object, :status => :created, :location => @current_object }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @current_object.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /profiles/1
  # PUT /profiles/1.xml
  def update
    @role = Role.find(:all)
    @current_object = Profile.find(params[:id])
    respond_to do |format|
      if @current_object.update_attributes!(params[:profile])
				@current_object.create_profile_workspace if @current_object.profile_workspace.nil?
				if user = @current_object.user
					user.email = @current_object.email_address
					user.system_role_id = params[:system_role_id]
					user.save
				end
        flash[:notice] = 'Profile was successfully updated.'
        format.html { redirect_to admin_profile_path(@current_object.id) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @current_object.errors, :status => :unprocessable_entity }
      end
    end
  end
  # DELETE /profiles/1
  # DELETE /profiles/1.xml
  def destroy
    @current_object = Profile.find(params[:id])
    @current_object.destroy

    respond_to do |format|
      format.html { redirect_to(admin_profiles_url) }
      format.xml  { head :ok }
    end
  end

	def update_notices
	    @current_object = Profile.find(params[:id])
			#@current_oject.notices = @current_oject.notices
			 if @current_object.update_attributes!(params[:profile])
				else
      end
			redirect_to back		
	end

end
