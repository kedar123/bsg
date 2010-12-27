class VisitorsController < ApplicationController

	layout 'front'

	def home_page
		@pramoting_stuff = PromotingStuff.find(:all,:limit=>3,:order=>"created_at desc")
		@front_image = Frontendpic.find(:all,:order=>"created_at desc",:limit=>5)
	end

	def new
		@current_object = User.new
		@current_object.build_profile if @current_object.profile.nil?
		
	end

#  def create
#
#	end

	def mailing_list
		@profile = Profile.new
	end
   
    def studios
		@profile = Profile.new
	end
     
     def adding_profile
	  @profile = Profile.new
	  @studiosndmailinglist = StudioAndMailingList.new(params[:profile])
		if !params[:profile][:studio].blank?
			   @studiosndmailinglist.studio = true
			   @studiosndmailinglist.mailing_list=false
       	else
 		       @studiosndmailinglist.mailing_list=true
 	           @studiosndmailinglist.studio=false
		end
	   if  !StudioAndMailingList.find(:first,:conditions=>["email_address = ? and studio = ? and mailing_list = ?",@studiosndmailinglist.email_address,@studiosndmailinglist.studio,@studiosndmailinglist.mailing_list]).blank?
		       flash[:notice] = "Record Is Already There"
       else          
             if @studiosndmailinglist.save
			         flash[:notice] = "Your Name Was Added To Email List"
			            if !params[:profile][:studio].blank?
			                 	     QueuedMail.add('UserMailer', 'studio_notification',[@studiosndmailinglist.email_address,@studiosndmailinglist.first_name + " " + @studiosndmailinglist.last_name], 0, true)
                        else
                 		  	         QueuedMail.add('UserMailer', 'mailing_list_notification',[@studiosndmailinglist.email_address,@studiosndmailinglist.first_name + " " + @studiosndmailinglist.last_name], 0, true)	
			            end
			            redirect_to('/')
			            return
			  end        
      end 	
      if params[:profile][:studio].blank?
                     			render :action => 'mailing_list'
	                        	else
	                          	render :action => 'studios'
	                        	end 		     
      
	end
     
     
	

end
