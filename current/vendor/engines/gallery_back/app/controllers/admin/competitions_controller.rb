# This controller is managing the different actions relative to the Image item.
#
# It is using a mixin function called 'acts_as_item' from the ActsAsItem::ControllerMethods::ClassMethods,
# so see the documentation of that module for further informations.
#
class Admin::CompetitionsController < Admin::ApplicationController
  
   before_filter :workspace_id

    def  workspace_id
       if  params["competition"] && params["competition"]["workspace_ids"].blank?
        params["competition"]["workspace_ids"]=Workspace.find(:first, :conditions => { :creator_id => current_user.id}).id.to_s
       end
       
    end

  def  send_winner_email
      @artworks_competition = ArtworksCompetition.find(params[:id])
	    QueuedMail.add('UserMailer', 'send_winner_email',[@artworks_competition,@artworks_competition.competitions_user.user], 0, send_now=true)	
	    flash[:notice]="The Email Is Sent To  #{@artworks_competition.competitions_user.user.profile.full_name}"
	    redirect_to :back
  end

  def send_mail_to_artist
    if params[:msg] == "unpaid"
    @total_selected = ArtworksCompetition.find(:all,:conditions => ["competition_id = ?  and paid = ? ",params[:id],false])
    
    else 
        @total_selected = ArtworksCompetition.find(:all,:conditions => "competition_id = #{params[:id]} and state = '#{params[:msg]}'")
  
    end
    @emailsendarray=[]
    @usernames = []
    @artworkarray=[]
  
    @total_selected.each do |arc|
       @usernames << arc.competitions_user.user.profile.first_name + " " + arc.competitions_user.user.profile.last_name if arc.competitions_user
       @emailsendarray << arc.competitions_user.user.profile.email_address if arc.competitions_user
    end
    
    @usernames.uniq!
    @emailsendarray.uniq!
    
    
     @competition = Competition.find(params[:id])
      @artwork= ArtworksCompetition.find(:first,:conditions => ["competition_id=?",@competition.id])
       @frommail = Frommail.find(:all)
       render :layout=>"gallery_promoting_mail"
  end
  
  def send_winner_email
    @artselected = ArtworksCompetition.find(params[:id])
    @emailsendarray=[]
    @usernames = []
    #@artselectedunpaid=ArtworksCompetition.find(:all,:conditions=>["paid=?",false])
    #@emailsendarray1=[]
    @emailsendarray << @artselected.competitions_user.user.profile.email_address
    @usernames << @artselected.competitions_user.user.profile.first_name + " " + @artselected.competitions_user.user.profile.last_name
    #@emailsendarray1 << @artselectedunpaid.competitions_user.user.profile.email_address
    @usernames.uniq!
    @emailsendarray.uniq!
    
    @competition = Competition.find(@artselected.competition_id)
    @frommail = Frommail.find(:all)
    render :layout=>"gallery_promoting_mail"
  end
  
  def compcreate_sent_mail_to_artist
    if !params[:artworkcompetition].blank?#this is for single winner for send_winner_email
       artwcomp = ArtworksCompetition.find(params[:artworkcompetition])
      
 
       if artwcomp.state == "winner"
          artwcomp.prize_detail = "winner of "+artwcomp.competition.title.to_s + "  " +params[:prize]
          artwcomp.save
       end
    end
        @artworks_competitions =ArtworksCompetition.all(:conditions=>["competitions_users_id =? and state =?",'!null', params[:msg] ])
     @message = current_user.sent_messages.build(params[:message])
       @message.prepare_copies(params[:message][:email])
    @message.body =  @message.body + "<br/><font color='#FF0080'>" + params[:signature].to_s+"</font>"
     all_the_recipient = params[:message][:email].split(',')
       #attachments.inline['@artworkarray'] = File.read("/system/gallery/<%=@artworkarray[0]%>")

        EmailSystem::deliver_email_notification(all_the_recipient,@message.subject,@message.body,image)

    if @message.save
      flash[:notice] = "Message sent."
      redirect_to :back
    else
      render :action => "send_mail_to_artist"
    end
  end
  
#this method is copy of above method "compcreate_sent_mail_to_artist" this is because i wnt to attach the images to each email

    def compcreate_selected_sent_mail_to_artist
   
    
    if !params[:artworkcompetition].blank?#this is for single winner for send_winner_email
       artwcomp = ArtworksCompetition.find(params[:artworkcompetition])
      
       if artwcomp.state == "winner"
          artwcomp.prize_detail = "winner of "+artwcomp.competition.title.to_s + "  " +params[:prize]
          artwcomp.save
       end
    end
    if params[:msg] == "unpaid"
        @artworks_competitions =ArtworksCompetition.all(:conditions=>["competitions_users_id =? and paid =? ",params[:artworkcompetition], false ])
      
    else 
        @artworks_competitions =ArtworksCompetition.all(:conditions=>["competitions_users_id =? and state =?",'!null', params[:msg] ])
    end 
     @message = current_user.sent_messages.build(params[:message])
     @message.prepare_copies(params[:message][:email])
     @message.body =  @message.body + "<br/><font color='#FF0080'>" + params[:signature].to_s+"</font>"
    
     all_the_recipient = params[:message][:email].split(',')
       #attachments.inline['@artworkarray'] = File.read("/system/gallery/<%=@artworkarray[0]%>")
       if params[:msg] == "unpaid"#here i need to attach the pdf files for users unpaid value.may be i need to create it here
         all_the_recipient.each do |to_address|
            user = User.find_by_email(to_address)
            competition_user_id = CompetitionsUser.find_by_user_id_and_competition_id(user.id,params[:competitionid])
            current_object_invoice = Invoice.find(:all, :conditions =>["purchasable_type = ? and client_id = ? and purchasable_id = ? and payment_medium = 'cash' or payment_medium = 'cheque' or payment_medium = 'direct deposit'",'CompetitionsUser',user.id,params[:competitionid]])
             
            #create_pdf(current_object.id,current_object.number,current_object.sent_at.strftime("%d %b %Y"),current_object.client.profile.full_address_for_invoice,current_object.client.profile.full_name_for_invoice,current_object.final_amount.to_i,current_object.note,"",current_object.final_amount.to_i)
       # EmailSystem::deliver_email_notification_unpaid(to_address,@message.subject,@message.body,invoicefile)
       total_unpaid_amount = 0
          current_object_invoice.each do |current_objectinv|
              total_unpaid_amount = total_unpaid_amount + current_objectinv.final_amount.to_i
          end
          
          create_pdf(rand(100000).to_s, rand(100000).to_s,     Time.now.strftime("%d %b %Y"),user.profile.full_address_for_invoice,user.profile.full_name_for_invoice,"Total UnPaid Amount",       total_unpaid_amount, "Please Pay The Amount before","",        total_unpaid_amount,false,Time.now.strftime("%d %b %Y"),"","#{RAILS_ROOT}/public/unpaid_invoice/#{user.id}-#{params[:competitionid]}unpaid.pdf")
#def create_pdf      (invoice_id="",invoice_number="",invoice_date="",              invoice_full_address = " " ,          invoice_user_fullname = " " ,      invoice_competition_title="",invoice_full_amount="",note="",                  amount_due="",paid="",exhibitionpdf=false,finish_date=Time.now.strftime("%d %b %Y"),deposit_required="",pdf_path="")#{invoice.sent_at.strftime("%d %b %Y")}   #{invoice.user.profile.full_address}

          EmailSystem::deliver_email_notification_unpaid(to_address,@message.subject,@message.body,"#{user.id}-#{params[:competitionid]}unpaid.pdf")
         
         
       end
 
        
       else
         all_the_recipient.each do |to_address|  
        user = User.find_by_email(to_address)
        competition_user_id = CompetitionsUser.find_by_user_id_and_competition_id(user.id,params[:competitionid])
        all_selected_artworks = ArtworksCompetition.all(:conditions=>["competitions_users_id =? and state =?",competition_user_id.id, params[:msg] ])
        for selected_artwork in all_selected_artworks
          
        
        EmailSystem::deliver_email_notification_selected(to_address,@message.subject,@message.body,selected_artwork)
        
        end
      end
       end 
      
      
      
    if @message.save
      flash[:notice] = "Message sent."
      redirect_to :back
    else
      render :action => "send_mail_to_artist"
    end
  end

  
  
  
  
  


  
  def compfind_signature_label
     signature = Signature.find(:all,:conditions=>["frommail_id = ?",params[:fromemail]])  
     render :update do |page|
        page["update_label"].replace_html(:partial =>'find_signature_label', :object =>signature)
     end
  end
  def compfind_signature
     signature = Signature.find(params[:fromemail])  
     render :update do |page|
        page.call("set_the_signature",signature.signature)
     end
  end
 	
  # Method defined in the ActsAsItem:ControllerMethods:ClassMethods (see that library for more information)
	acts_as_item do
		before :new, :edit do
       
       columnnameandheader = Columnnameandheader.find(:all,:conditions=>["idoffieldwithtablename = ?",@current_object.id.to_s+"competition"])
	     @oldlabelvalue={}
	     columnnameandheader.each do |x|   
	       @oldlabelvalue[x.column_name] = x.column_header
	     end
       
			@places = Gallery.all
			@current_object.build_timing if @current_object.timing.nil?
			@judges = User.find(:all, :conditions => "system_role_id=2 OR system_role_id=#{Role.find_by_name('judge').id}")
			@current_object.competitions_subscriptions.build if @current_object.competitions_subscriptions.empty?
		end
		
	   before :update do

       begin
         @current_object.submission_deadline = Date.civil(params[:competition][:submission_deadline].split("-")[0].to_i,params[:competition][:submission_deadline].split("-")[1].to_i,params[:competition][:submission_deadline].split("-")[2].to_i)
	     rescue
	     end
	   end
	   before :create do
      
             begin
               
            # @current_object.title="s"
             @current_object.submission_deadline = Date.civil(params[:competition][:submission_deadline].split("-")[0].to_i,params[:competition][:submission_deadline].split("-")[1].to_i,params[:competition][:submission_deadline].split("-")[2].to_i)
	          rescue
	          end
	   end
      after :create do
        p "sssssssssssssssssssssssssssssssssqqqqqqqqqaaaaaaaaaddddddzzzzz"
              params.to_hash.each do |key,value|
                   if key.include? "compdheaderf"
                      valueid = key[key.length-1,key.length-2]
                      p valueid
                      p key
                      p value
                     
                      columnnameandheader = Columnnameandheader.new
                      #columnnameandheader.column_name = key.split("header")[1]        
                      columnnameandheader.column_header = value
                      columnnameandheader.column_value = params["compdheadervalue"+valueid.to_s]
                       columnnameandheader.idoffieldwithtablename = (@current_object.id.to_s+"competition")
                      columnnameandheader.save
                   end 
               end      
      end  
after :update do

              Columnnameandheader.delete_all(["idoffieldwithtablename = ?",@current_object.id.to_s+"competition"])
              params.to_hash.each do |key,value|
                
                   if key.include? "header"
                      columnnameandheader = Columnnameandheader.new
                      columnnameandheader.column_name = key.split("header")[1]        
                      columnnameandheader.column_header = value
                      columnnameandheader.idoffieldwithtablename = (@current_object.id.to_s+"competition")
                      columnnameandheader.save
                   end 
               end 
      
      end  




		



		
		after :create_fails, :update_fails do
			#raise @current_object.errors.inspect
			@places = Gallery.all
			@current_object.build_timing if @current_object.timing.nil?
			@judges = User.find(:all, :conditions => "system_role_id=1 OR system_role_id=2")
			@current_object.competitions_subscriptions.build if @current_object.competitions_subscriptions.empty?
      
   	end

    
    
    
    
      before :destroy do
				
		  @current_object.competitions_users.each do |cu|
		    Invoice.delete_all("purchasable_id = #{cu.id} and purchasable_type = 'CompetitionsUser'")
		  end    
      
      end 
      
      		
		
		before :show do
       
        
        @total_artist = CompetitionsUser.count(:conditions => "competition_id = #{@current_object.id}")
        @total_entry = ArtworksCompetition.count(:conditions => "competition_id = #{@current_object.id}")
        @total_selected = ArtworksCompetition.count(:conditions => "competition_id = #{@current_object.id} and state = 'selected'")
        @total_unselected = ArtworksCompetition.count(:conditions => "competition_id = #{@current_object.id} and state = 'unselected'")
        @total_maybe = ArtworksCompetition.count(:conditions => "competition_id = #{@current_object.id} and state = 'maybe'")
        @winner_selected = ArtworksCompetition.count(:conditions => "competition_id = #{@current_object.id} and state = 'winner'")
        @total_price = 0
        @total_artist_paid = CompetitionsUser.find(:all,:conditions => "competition_id = #{@current_object.id} ")
        @total_artist_paid_id = []
        @total_artist_paid.each do |tap|
        @total_artist_paid_id << tap.id    
        end

     
        if !@total_artist_paid_id.blank? 
          @invoice = Invoice.find(:all,:conditions=>"purchasable_type = 'CompetitionsUser' and state = 'validated' and (payment_medium = 'paypal' or payment_medium = 'online' or payment_medium = 'online_validated') and purchasable_id in (#{@total_artist_paid_id.join(',')})")
        end
      
      if !@invoice.blank?
          @invoice.each do |inv|
            @total_price = @total_price + inv.final_amount
          end
        end
      	
			if @current_object.state == 'results_publish'
				 @artworks_competitions = @current_object.artworks_competitions.all(:conditions=>["competitions_users_id != 'null' and state = 'winner' or state =  'selected' or  state = 'unselected' "], :order => "mark DESC")
    	elsif @current_object.state == 'final_published'
				 @artworks_competitions = @current_object.artworks_competitions.all( :conditions => ["state =  'selected' or state = 'winner' or  state = 'unselected' and competitions_users_id != 'null' "])
      
			else
				 @artworks_competitions = @current_object.artworks_competitions.all(:conditions=>["competitions_users_id != 'null'  "])
            
      
         #@artworks_competitions =  CompetitionsUser.find(:all,  :conditions => { :competition_id =>  @current_object.id })
			end
			get_artworks_lists
			@my_subscription = CompetitionsUser.find(:first,  :conditions => { :user_id => @current_user.id, :competition_id => @current_object.id })
  
      @columnheaders = Columnnameandheader.find(:all,  :conditions => { :idoffieldwithtablename => @current_object.id.to_s+'competition' })
		end
		
	end
  def change_state
    @current_object = Competition.find(params[:competition_id])
    @current_object.update_attributes(:state => params[:new_state])
    redirect_to :back
  end
	def submit_artworks
		@current_object = Competition.find(params[:id])
		if @current_user.has_system_role('admin')
			@current_object.artwork_ids = params[:selectedOptions].split(',')
			@current_object.save
		elsif a=CompetitionsUser.find(:first, :conditions => { :user_id => @current_user.id, :competition_id => @current_object.id })
			my_subscription = a.competitions_subscription
			params[:selectedOptions] += ",#{(@current_object.artworks - @current_user.private_workspace.artworks).map{ |e| e.id }.join(',')}" if params[:selectedOptions]
			@current_object.artwork_ids= params[:selectedOptions].split(',')[0..my_subscription.maximum_works_number-1]
			@current_object.save
		end
		redirect_to item_path(@current_object)
	end

    def open
			@competitionuser = CompetitionsUser.find(:all,:conditions=>["competition_id = ?   ",params[:id]])
    end
   	
   	def finalist
   	      competitionuser = CompetitionsUser.find(:all,:include=>["artworks_competitions"],:conditions=>["competition_id = ?   ",params[:id]])
                @competitionuser  = []
                competitionuser.each do |ac| 
                ac.artworks_competitions.each do |x|  
                  if x.state == "selected"
                  @competitionuser  << x.competitions_user
                  end
               end 
   	end
   	@competitionuser.uniq!
	end
	
	def winner
	         competitionuser = CompetitionsUser.find(:all,:include=>["artworks_competitions"],:conditions=>["competition_id = ?   ",params[:id]])
                @competitionuser  = []
                competitionuser.each do |ac| 
                ac.artworks_competitions.each do |x|  
                  if x.state == "selected"
                  @competitionuser  << x.competitions_user
                  end
               end 
   	end
   	@competitionuser.uniq!
	end
	
  def group_selection
   @current_object = Competition.find(params[:competition_id])
      @artworks_competitions =ArtworksCompetition .find(:all,:conditions=>["competition_id = ?   ",@current_object.id])
  end

  def show_all_competition
      @competition = Competition.find(:all)
      if request.xhr?
         render :update do |page|
            page['fragment-3'].replace_html(:partial=>"comp_list")
         end 
      end    
  end
 
  def show_all_comp_exh
      @competition = Competition.find(:all)
      @exhibition = Exhibition.find(:all)
      if request.xhr?
         render :update do |page|
            page['fragment-4'].replace_html(:partial=>"comp_exh_list")
         end 
      end    
  end

 def new
      @current_object = Competition.new
        columnnameandheader = Columnnameandheader.find(:all,:conditions=>["idoffieldwithtablename = ?",@current_object.id.to_s+"competition"])
	     @oldlabelvalue={}
	     columnnameandheader.each do |x|   
	       @oldlabelvalue[x.column_name] = x.column_header
	     end
  			@places = Gallery.all
			@current_object.build_timing if @current_object.timing.nil?
			@judges = User.find(:all, :conditions => "system_role_id=2 OR system_role_id=#{Role.find_by_name('judge').id}")
			@current_object.competitions_subscriptions.build if @current_object.competitions_subscriptions.empty?

 
     if request.xhr?
          render :update do |page|
          page['fragment-3'].replace_html(:partial=>'form')
          end
     end
 
 
 end

  
 def add_comp_dynamic_field
      if request.xhr?
        
          render :update do |page|
              
             page.insert_html :before, 'adddynamiccompetitionfield', :partial => 'dynamic_field'
             page['adddynamiccompetitionfieldnewvalue'].replace_html(:partial=>'dynamic_hidden_field')
              
       end
     end
 end
 
 
 
 
	private

	def get_artworks_lists
		if @current_user.has_system_role('admin')
			@selected_artworks = @current_object.new_record? ? [] : @current_object.artworks
			

			@remaining_artworks = @current_object.competitions_users.map{ |e| e.user }.delete_if{ |e|;
        if e 
          !e.private_workspace 
        end
      }.map{ |e| 
      if e
        e.private_workspace.artworks 
      end
      }.flatten - @selected_artworks
		elsif CompetitionsUser.exists?(:user_id => @current_user.id, :competition_id => @current_object.id)
			
			@selected_artworks = @current_object.new_record? ? [] : @current_object.artworks & @current_user.private_workspace.artworks
			# TODO hack for rights ...
			@remaining_artworks = @current_user.private_workspace.artworks - @selected_artworks
		end
		
	end

 

end
