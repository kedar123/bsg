class Admin::ProfilesController < Admin::ApplicationController
   
  def show_columns
    if params[:id]
      Timing.delete_all(" id = #{params[:id]}")
    end
    @exhibition = Exhibition.find(:last)
    Timing.delete_all(" id >= #{@exhibition.id} and objectable_type = 'Exhibition'")
    @exhibition = Competition.find(:last)
    Timing.delete_all(" id >= #{@exhibition.id} and objectable_type = 'Competition'")
    
    @timing=Timing.find(:all)
    @string=""
    @timing.each do |x|
      @string << x.id.to_s + "id"+ x.objectable_id.to_s + " " + x.objectable_type + "<br/>"
    end
    
    render :text=>"imshow coluns"+@string
  end
  
  def change_profile
  
    p params
    p "this are my params"
       
   # render :text=>params[:update_value]
    
    puts params[:update_value]
    puts " Saving Data.......................................................>>>>>>>"
    
    
    profile=Profile.find(params[:id])
    
   # if params[:element_id] == "full_name" 
    
   #    name = profile.full_name_separation(params[:update_value])
   #    profile.update_attribute('first_name',name[0])
   #    profile.update_attribute('first_name',name[1])
   #    profile.update_attribute('first_name',name[2])
   # end
    
    
   #Name updation is to be worked out. 
   
   if params[:element_id] == "first_name"   
       profile.update_attribute('first_name',params[:update_value])
   end
   
   if params[:element_id] == "last_name"   
       profile.update_attribute('last_name',params[:update_value])
   end
    
    if params[:element_id] == "email_address"   
       profile.update_attribute('email_address',params[:update_value])
       profile.user.update_attribute('email',params[:update_value])
    end
       
      if params[:element_id] == "phone_number"   
         profile.update_attribute('phone_number',params[:update_value])
      end
          
       if params[:element_id] ==  "website"   
          profile.update_attribute('website',params[:update_value])
       end
        
         if params[:element_id] == "address"   
              profile.update_attribute('address',params[:update_value])
         end
          
             if params[:element_id] == "suburb"   
                profile.update_attribute('suburb',params[:update_value])
             end
              
               if params[:element_id] == "zip_code"   
                  profile.update_attribute('zip_code',params[:update_value])
               end
                   
                  if params[:element_id] == "country_state"   
                     profile.update_attribute('country_state',params[:update_value])
                  end
                            
                   if params[:element_id] == "country"   
                      profile.update_attribute('country',params[:update_value])    
                  end
                
     render :update do |page|
       page[params[:element_id]].replace_html(params[:update_value])
       page['show_ajax_request_user_details'].hide()
     end

  end
  
  
  
	acts_as_ajax_validation

  # GET /profiles
  # GET /profiles.xml
  def index
 
     #@competitionuserenteredlist = CompetitionsUser.find(:all)
     @competitions = Competition.find(:all)
 
  
      if  current_user.login == "admin" || current_user.login == "superadmin"
		    @current_objects = Profile.superadmin_filtered.all(:order => 'first_name asc')
        logger.info "sssssssssssssss"
        logger.info @current_objects
		    @num = @current_objects.size
        respond_to do |format|
          format.html  # index.html.erb
          format.xml  { render :xml => @current_objects }
        end
     else
        flash[:notice] = "Please Login As Admin to View All The Users List"
        redirect_to "/admin"
     end   
       
  end

	def filter
    
    if params[:category_ids].class == String
       params[:category_ids] = params[:category_ids].split(',')
    end
    
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
   
    @newsletter = Newsletter.find(:all)
   
    
		respond_to do |format|
      format.html { render :template => 'admin/profiles/index.html.erb'}
      format.xml  { render :xml => @current_objects }
    end
	end

  # GET /profiles/1
  # GET /profiles/1.xml
 def show
     
   if  current_user.login == "admin" || current_user.login == "superadmin"  
    
    @current_object = Profile.find(params[:id])
    session[:exh_display_list] = params[:id]
    #@my_subscription = CompetitionsUser.find(:last);
    @artworkexhibition = Artwork.find(:all,:conditions=>["user_id = ? and exhibition_id = ?",@current_user.id,@current_object.id])
    #@folder = @current_object.user.inbox
    @messages = @current_object.user.sent_messages.paginate :conditions=>["deletedm = ? or deletedm is null",false], :per_page => 500, :page => params[:page], :order => "created_at DESC"
    #@messages = current_user.sent_messages.paginate :conditions=>["deletedm = ? or deletedm is null ",false], :per_page => 500, :page => params[:page], :order => "created_at DESC"
     @message_recd = []
    #above are the recd message and below are the sent message
    #adminuser = User.find_by_login("admin")
    @current_object.user.received_messages.each do |mc|
      @message_recd << mc.message
    end
    @exhartwork = Artwork.find(:all,:conditions=>["user_id = ?",params[:id]])
    comp_users = CompetitionsUser.find(:all,:conditions=>["user_id = ?",@current_object.id])
    id_list = []
    comp_users.each do |cu|
      id_list << cu.id
    end
    p id_list
    p "the total listtttt"
    p id_list.join(',')
 
    @all_comp_art_work = []
    if !id_list.join(',').blank?
    @all_comp_art_work = ArtworksCompetition.find(:all,:conditions=>["competitions_users_id in (#{id_list.join(',')})"])
    end
 
    p @all_comp_art_work.length
   
    #@messages.flatten!
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @current_object }
    end
   else
      flash[:notice] = "Please Login As Admin to View All The Users List"
      redirect_to "/admin"
   end
    
    
  end
  
 
 
  def compose_email_to_selected_people
    @current_objects = []
    @message = current_user.sent_messages.build
    @frommail = Frommail.find(:all)
   # cat_id = params[:cat_id] 
   # cat_id
   	params[:cat_id].each_char do |cat|
				@current_objects += ProfilesCategory.find(:all, :conditions => { :category_id => cat.to_i }).map{ |e| e.profile }
			end
			@current_objects.uniq!
      @emailstring = ""
      @current_objects.each do |co|
        @emailstring << co.email_address << ","
      end
      if !@emailstring.blank?
        if @emailstring[@emailstring.length-1,@emailstring.length] == ","
           @emailstring[@emailstring.length-1] = ''
        end
      end
    p "from controller"
    p @emailstring
  end
 
 
 
 
  def compose_user_mail
     @message = current_user.sent_messages.build
     @frommail = Frommail.find(:all)
     @sendusermail=User.find(params[:id])
     render :layout=> "gallery_promoting_mail"
  end
  
  def compose_mail
      @message = current_user.sent_messages.build
      @frommail = Frommail.find(:all)
      @sendusermail=User.find(params[:id])
    p "Compose mail loading......................................................."
    if request.xhr?
       render :update do |page|
            page['fragment-6'].replace_html(:partial=>'compose_mail')
            page["ajax_spinner"].visual_effect :hide
       end 
    else
    render :layout=>false;
    end
      
  end
  
  def back_to_comp_list
      @competitions = Competition.find(:all)
       render :update do |page|
            page['fragment-3'].replace_html(:partial=>'back_to_comp_list')
        end 
  end
  
  def create_sent_mail
    @message = current_user.sent_messages.build(params[:message])
    @message.prepare_copies(params[:user][:email])
    @message.body =  @message.body + "<br/><font color='#FF0080'>" + params[:signature].to_s+"</font>"
    all_the_recipient = params[:user][:email].split(',')
    #EmailSystem::deliver_email_notification(all_the_recipient,@message.subject,@message.body)
    if @message.save
      flash[:notice] = "Message sent."
      redirect_to :back
    else
      flash[:notice] = "Please Try Again There Was a Problem In Sending an Email."
      redirect_to :back
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
        
        alreadypaidamt = nil
        exhibitionuser = ExhibitionsUser.find(params[:id])
        @invoice = Invoice.find(:first,:conditions=>["purchasable_type = ? and  client_id = ?  and purchasable_id = ? ","ExhibitionsUser" , exhibitionuser.user,exhibitionuser.id])
        if  @invoice != nil and @invoice.state == "created"
        else
        @invoice = Invoice.find(:last,:conditions=>["purchasable_type = ? and  client_id = ? and purchasable_id = ?","ExhibitionsUser" , exhibitionuser.user,exhibitionuser])
        alreadypaidamt = exhibitionuser.price - @invoice.final_amount
        end
        @order = exhibitionuser
    		@credit_card = CreditCard.new	
		    session[:purchasable] = exhibitionuser
		    #render :partial=>"exhibitionpaymentfront"
	  	  render :update do |page|
		     #   page["enterintocompetitionfront"].replace_html :partial=>"exhibitionpaymentfront",:locals=>  {:order=>@order,:invoice=>@invoice,:exhibitionuser=>exhibitionuser,:credit_card=>@credit_card,:alreadypaidamt=>alreadypaidamt}
		     #   page["description_competition_ex_py"].show
		     #   page["iteam_image_uploaded"].hide
         #   page["useruploadedpic"].hide
		     #   for k in 0..9
		     #         page["iteam_image#{k}"].hide
         #   end
          page['detailsofexh'+exhibitionuser.exhibition.id.to_s].replace_html :partial=>"exhibitionpaymentfront",:locals=>  {:order=>@order,:invoice=>@invoice,:exhibitionuser=>exhibitionuser,:credit_card=>@credit_card,:alreadypaidamt=>alreadypaidamt}
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
    if request.xhr?
       render :update do |page|
            page['fragment-1'].replace_html(:partial=>'profile_fields_back')
       end 
    else
    render :layout=>false;
    end
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
    #respond_to do |format|
      @current_object.full_name_separation(params[:profile_full_name]) 
      
      
     
      if @current_object.update_attributes!(params[:profile])
				@current_object.create_profile_workspace if @current_object.profile_workspace.nil?
				if user = @current_object.user
					user.email = @current_object.email_address
					user.system_role_id = params[:system_role_id] if params[:system_role_id]
					user.save
				end
     #   flash[:notice] = 'Profile was successfully updated.'
    #    if format.xhr?
          
    #    else
    #    format.html {} #{ redirect_to admin_profile_path(@current_object.id) }
    #    end
     #   format.xml  { head :ok }
    #    p "sssssssssssssssssss"
    #  else
     #  p "wwwwwwwwwwww"
     #   flash[:notice] = "Problem in saving the profile "+@current_object.errors.first[1]
     #   format.html { render :action => "edit" }
     #  format.xml  { render :xml => @current_object.errors, :status => :unprocessable_entity }
     # end
     
    end
      render :update do |page|
       page['fragment-1'].replace_html(:partial => 'user_information') 
       # page["show_message_details"].replace_html(:partial =>'message_sent_detail', :object =>@message)
      end
      
      
  end
  # DELETE /profiles/1
  # DELETE /profiles/1.xml
  def destroy
    @current_object = Profile.find(params[:id])
    User.delete_all("id = #{@current_object.user_id}")
    @current_object.destroy

    respond_to do |format|
      format.html { redirect_to(admin_profiles_url) }
      format.xml  { head :ok }
    end
  end

  def update_notices
  
	    @current_object = Profile.find(params[:id])
			#@current_oject.notices = @current_oject.notices
			@current_object.notices = params[:notice]
      @current_object.save
			flash[:notice] = "Profile Is Updated"
			redirect_to :back		
  end
  
  def show_message_sent
    
    @message = Message.find(params[:id])
    
   
       render :update do |page|
        page["show_message_details"].replace_html(:partial =>'message_sent_detail', :object =>@message)
        page["ajax_spinner"].visual_effect :hide
      end
  end

  
  
  def show_message_recd
    
  user = User.find(params[:author_id])
  @message = user.sent_messages.find(params[:id])
       render :update do |page|
        page["message"+@message.id.to_s].replace_html(:partial =>'message_sent_detail', :object =>@message)
        page["ajax_spinner"].visual_effect :hide
      end
  end
  
  
end
