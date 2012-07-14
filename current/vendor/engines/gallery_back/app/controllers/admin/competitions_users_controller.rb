class Admin::CompetitionsUsersController < Admin::ApplicationController

	def update_state
		cu = CompetitionsUser.find(params[:id])
		cu.state = params[:state]
		cu.save
		redirect_to :back
	end
	
	def artworks_wizard
		@competitions_user = CompetitionsUser.find(params[:id])
		aws = @competitions_user.artworks
		for i in 1..@competitions_user.competitions_subscription.maximum_works_number.to_i
			@competitions_user.instance_variable_set("@artwork#{i}".to_sym, aws[i-1] ? aws[i-1] : Artwork.new)
		end
		#raise @competitions_user.instance_variable_get("@artwork1").inspect
		render :partial => 'admin/competitions_users/artworks_wizard', :layout => false
	end

	def submit_artworks
		@competitions_user = CompetitionsUser.find(params[:id])
		comp = @competitions_user.competition
		#raise params.inspect
		for i in 1..@competitions_user.competitions_subscription.maximum_works_number.to_i
			if params[i.to_s][:artwork][:id] && params[i.to_s][:artwork][:id] != ''
				a = Artwork.find(params[i.to_s][:artwork][:id].to_i)
				a.update_attributes(params[i.to_s][:artwork])
			else
				if params[i.to_s][:artwork][:title] != '' && params[i.to_s][:artwork][:image] != ''
					a = Artwork.new(params[i.to_s][:artwork])
					a.user_id = @current_user.id
					a.workspace_ids = [@current_user.private_workspace.id]
#					a.save
#					raise a.errors.inspect
					comp.artworks << a
				end
			end
			@competitions_user.instance_variable_set("@artwork#{i}".to_sym, a)
		end
		if comp.save
#			flash[:modal_notice] = 'Competition subscription completed !!!'
#			render :text => @template.blank_main_div(:title => 'Final message', :hsize => 'sixH', :modal => true){ "<p>#{comp.message_for_subscribers.to_s}</p>" }, :layout => false
			flash[:notice] = "Competition subscription completed : #{comp.message_for_subscribers.to_s}"
			redirect_to admin_competition_url(comp.id)
		else
			flash[:error] = 'Error saving the artworks'
			render :partial => 'admin/competitions_users/artworks_wizard', :layout => false
		end
	end
  
  def change_artwork_drop_or_send_value
      competitions_user = CompetitionsUser.find(params[:cu])
      competitions_user.drop_of_work = params[:id]
      competitions_user.save
      render :nothing=>true
  end
  
  
  #first find a ajax request which open a pop up. while showing a invoices of exhibition
  def show_popup_image_upload
    #:id/:imgtitle
      order = CompetitionsUser.find(params[:id])
       image_array = ['fworkimage','sworkimage','tworkimage','foworkimage','fiworkimage','siworkimage','seworkimage','eworkimage','nworkimage','teworkimage']
       title_array = ['fworktitle','sworktitle','tworktitle','foworktitle','fiworktitle','siworktitle','seworktitle','eworktitle','nworktitle','teworktitle']

      art_comp = ArtworksCompetition.find(:first,:conditions=>["image_name = ? and competitions_users_id = ?",image_array[title_array.index(params[:imgtitle].to_s)],params[:id]] )
         p art_comp
         p "ssssssss"
         
     render :update do |page| 
       page['modal_space'].replace_html(:partial=>'admin/competitions_users/update_image',:locals=>{:image_url=>art_comp.avatar_file_name,:competitionuserid=>order.id,:artcompid=>art_comp.id,:image_name=>art_comp.image_name})
     end
    
  end
  

end