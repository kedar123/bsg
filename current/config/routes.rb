
ActionController::Routing::Routes.draw do |map|
  map.resources :frommails

  map.resources :signatures

  map.resources :emaillabels

  map.connect "/show_user_type"	,:controller=>"show_user_type",:action=>"index"
  map.connect "/admin/competitions/create_subscribe_competition"	,:controller=>"competitions",:action=>"create_subscribe_competition"
  map.connect "/admin/competitions/confirm_competition_subscription_details/:id"	,:controller=>"competitions",:action=>"confirm_competition_subscription_details"
  map.connect "/admin/competitions/edit_competition_subscription_details/:id"	,:controller=>"competitions",:action=>"edit_competition_subscription_details"
  map.connect "/admin/competitions/update_subscribe_competition/:id",:controller=>"competitions",:action=>"update_subscribe_competition"
  


 
  map.connect "/admin/invoices/new/:id",:controller=>"admin/invoices",:action=>"new"
  map.connect "/payment_response" ,:controller=>"admin/payments",:action=>"create"
  map.connect "/admin/mail" ,:controller=>"admin/mail",:action=>"index"
  
  map.connect "/admin/delete_temprary_email" ,:controller=>"admin/mail",:action=>"delete_temprary_email"
  map.connect "/admin/delete_from_trash" ,:controller=>"admin/mail",:action=>"delete_from_trash"
  map.connect "/admin/flag_email" ,:controller=>"admin/mail",:action=>"flag_email"
  map.connect "/admin/show_flag_email" ,:controller=>"admin/mail",:action=>"show_flag_email"
  map.connect "/admin/compose_new_mail" ,:controller=>"admin/mail",:action=>"compose_new_mail"
  map.connect "/admin/create_sent_mail" ,:controller=>"admin/mail",:action=>"create_sent_mail"
  map.connect "/admin/create_temporary_inbox" ,:controller=>"admin/mail",:action=>"create_temporary_inbox"
  map.connect "/admin/create_sent_mail_with_unknown" ,:controller=>"admin/mail",:action=>"create_sent_mail_with_unknown"  
  map.connect "/admin/show_message" ,:controller=>"admin/mail",:action=>"show_message"
  map.connect "/admin/replay_message" ,:controller=>"admin/mail",:action=>"replay_message"
  map.connect "/admin/replay_to_all" ,:controller=>"admin/mail",:action=>"replay_to_all"
  map.connect "/admin/delete_email",:controller=>"admin/mail",:action=>"delete_email"
  map.connect "/admin/delete_all_email",:controller=>"admin/mail",:action=>"delete_all_email"
  map.connect "/admin/create_label",:controller=>"admin/mail",:action=>"create_label"
  map.connect "/find_signature_label",:controller=>"admin/mail",:action=>"find_signature_label"
  map.connect "/find_signature",:controller=>"admin/mail",:action=>"find_signature"
  map.connect "/admin/flag_mail",:controller=>"admin/mail",:action=>"flag_mail"
  map.connect "/admin/delete_show_flag_mail",:controller=>"admin/mail",:action=>"delete_show_flag_mail"
  map.connect "/admin/delete_label",:controller=>"admin/mail",:action=>"delete_label"
  map.connect "/admin/unknown_email",:controller=>"admin/mail",:action=>"unknown_email"
  map.connect "/auto_complete_for_user_email",:controller=>"admin/mail",:action=>"auto_complete_for_user_email"
  map.connect "/admin/show_unknown_message",:controller=>"admin/mail",:action=>"show_unknown_message"
  map.connect "/admin/replay_message_to_unknown",:controller=>"admin/mail",:action=>"replay_message_to_unknown"
  

  
  map.connect "/admin/forward_email" ,:controller=>"admin/mail",:action=>"forward_email"
  map.connect "/admin/sent_mail" ,:controller=>"admin/mail",:action=>"sent_mail"
  map.connect "/admin/trash_mail" ,:controller=>"admin/mail",:action=>"trash_mail"
  map.connect "/admin/show_sent_message" ,:controller=>"admin/mail",:action=>"show_sent_message"
  map.connect "/admin/moveto" ,:controller=>"admin/mail",:action=>"moveto"
  map.connect "/admin/show_labeled_email" ,:controller=>"admin/mail",:action=>"show_labeled_email"
  map.connect "/admin/sent_flag_email" ,:controller=>"admin/mail",:action=>"sent_flag_email"
  map.connect "/admin/delete_sent_mail" ,:controller=>"admin/mail",:action=>"delete_sent_mail"
  map.connect "/admin/create_sent_mail_with_original_id/:id" ,:controller=>"admin/mail",:action=>"create_sent_mail_with_original_id"
  
      
  
  
  
  map.resources :periods
  map.resources :people
  # Blank Specific Routes
  # Routes Related to SuperAdministrator
	map.namespace :superadmin do |sa|
		sa.connect '', :controller => 'superadmin/administration', :action => 'show'
		sa.resources :general_settings, :only => [:index, :update], :collection => { :editing => :get, :updating => :put }
		sa.resources :audits, :only => [:index]
		sa.resources :user_interfaces, :only => [:index, :update], :collection => { :editing => :get, :updating => :put, :check_color => :get, :colors_changing => :get }
		sa.resources :tasks, :only => [:index], :collection => { :run_task => :get }
		sa.resources :translations, :only => [:index, :update], :collection => { :updating => :put, :context_switching => :get, :translation_new => :any , :new_project => :any, :new_language => :any, :section_switching => :any }
      sa.resources :mailer_settings, :only => [:index], :collection => { :updating => :put }
		sa.resources :mailing_settings, :only => [:index], :collection => { :updating => :put }
		sa.resources :ecom_settings, :only => [:index], :collection => { :updating => :put }
    # Routes for Roles and Permissions in BA
    sa.resources :roles, :collection => {:validate => :post}
    sa.resources :permissions, :collection => {:validate => :post}
    sa.resources :google_analytics, :only => [:index], :collection => {:updating => :put}
	end
    map.connect "/admin/promoting_stuffs/update/:id",:controller=>"promoting_stuffs",:action=>"update"
    map.resources :promoting_stuffs  , :path_prefix => 'admin'
    map.connect "/admin/booksshops/update/:id",:controller=>"booksshops",:action=>"update"
    map.resources :booksshops  , :path_prefix => 'admin'
    map.connect "/booksshops",:controller=>"booksshops",:action=>"index",:id=>"front"
    
    map.connect "/admin/app_homes/update/:id",:controller=>"app_homes",:action=>"update"
    map.resources :app_homes  , :path_prefix => 'admin'
    map.connect "/app_homes",:controller=>"app_homes",:action=>"index",:id=>"front"
    
    map.connect "/admin/front_end_pics/update/:id",:controller=>"front_end_pics",:action=>"update"
    map.resources :front_end_pics  , :path_prefix => 'admin'
    map.connect "/front_end_pics",:controller=>"front_end_pics",:action=>"index"
    
    map.connect "/admin/drawings/update/:id",:controller=>"drawings",:action=>"update"
    map.resources :drawings  , :path_prefix => 'admin'
    map.connect "/drawings",:controller=>"drawings",:action=>"index",:id=>"front"
    map.connect "/admin/links/approve/:id",:controller=>"links",:action=>"approve"
    map.connect "/admin/links/update/:id",:controller=>"links",:action=>"update"
    map.connect "/admin/signature",:controller=>"signatures",:action=>"index"
    map.connect "/add_frommail",:controller=>"signatures",:action=>"add_frommail"
    map.connect "/add_signature",:controller=>"signatures",:action=>"add_signature"

    
    
    map.resources :links  , :path_prefix => 'admin'
    map.connect "/links",:controller=>"links",:action=>"index",:id=>"front"
    map.connect "/admin/competitions_users/update/:id",:controller=>"competitions_users",:action=>"update"
    map.connect "/admin/competitions_users/destroy/:id",:controller=>"competitions_users",:action=>"destroy"
    map.resources :competitions_users  , :path_prefix => 'admin'
    map.resources :competitions_artworks  , :path_prefix => 'admin'

  
  map.namespace :admin do |admin|
    admin.connect "/competitions/open/:id",:controller=>"competitions",:action=>"open"
    admin.connect "/competitions/finalist/:id",:controller=>"competitions",:action=>"finalist"
    admin.connect "/competitions/winner/:id",:controller=>"competitions",:action=>"winner"
    admin.connect "/competitions/send_winner_email/:id",:controller=>"competitions",:action=>"send_winner_email"
    admin.connect "/profiles/exhibition_payment/:id",:controller=>"profiles",:action=>"exhibition_payment"

    
    # Generated by Restful Authentification
    admin.logout '/logout', :controller => 'sessions', :action => 'destroy'
    admin.login '/login', :controller => 'sessions', :action => 'new'
    admin.signup '/signup', :controller => 'users', :action => 'new'
    admin.activate '/activate/:activation_code', :controller => 'users', :action => 'activate'
    admin.forgot_password '/forgot_password', :controller => 'users', :action => 'forgot_password'
    admin.reset_password '/reset_password/:password_reset_code', :controller => 'users', :action => 'reset_password'
    #admin.promoting_stuff '/promoting_stuff/new', :controller => 'users', :action => 'reset_password'
    #admin.promoting_stuff '/promoting_stuff' ,:controller => 'promoting_stuff', :action => 'index'
    #admin.promoting_stuff '/promoting_stuff/new' ,:controller => 'promoting_stuffs', :action => 'new'
   # admin.promoting_stuff_index '/promoting_stuffs/index' ,:controller => 'promoting_stuffs', :action => 'index'
    
   # admin.resources :promoting_stuffs
    #admin.resource :promoting_stuff
    admin.resources :users, :member => { :locking => :any, :resend_activation_mail_or_activate_manually => :post },
      :collection => {:autocomplete_on => :any, :validate => :any } do |user|
      user.resources :notifications, :only => [:index, :create]
			end
		def profiles_resources(root)
			PROFILES.map{ |e| e.pluralize.to_sym }.each do |e|
				root.resources e, :only => :none, :collection => { :validate => :any }
			end
		end
		profiles_resources(admin)
    # Sessions for managing user sessions
    admin.resource :session
    # Routes for People
    admin.resources :people, :collection => {:export_people => :any, :import_people => :any, :get_empty_csv => :get, :validate => :any ,:filter => :get }
    # Route for HomePage
    admin.resources :home, :only => [:index], :collection => { :autocomplete_on => :any }
    # Routes for Comments
    admin.resources :comments, :only => [:index, :edit, :update, :destroy], :member => { :change_state => :any, :add_reply => :any}, :collection => {:validate => :post}
    # Routes for ratings
    admin.resources :ratings, :only => [:index]
    # Route for HomePage
    admin.root :controller => 'home', :action => 'index'

    # Items are CMS component types
    # Those items may be scoped to different resources
    def items_resources(parent)
      ITEMS.each do |name|
        member_to_set = {
          :rate => :any,
          :add_comment => :any,
          :redirect_to_content => :any
        }
        member_to_set.merge!({:remove_file => :any}) if name=='article'
        member_to_set.merge!({:get_video_progress => :any}) if name=='video'
        member_to_set.merge!({:get_audio_progress => :any}) if name=='audio'
        member_to_set.merge!({:send_to_a_group => :any}) if name=='newsletter'
				member_to_set.merge!({:submit_artworks => :post}) if name=='exhibition' || name=='competition'
        member_to_set.merge!({:export_to_csv => :any}) if name=='group'
				member_to_set.merge!({:submit => :post}) if name=='submited_work'
				member_to_set.merge!({:set_an_exhibition => :get}) if name=='user_group'
        member_to_set.merge!({:download => :any}) if ['audio', 'video', 'cms_file', 'image'].include?(name)
        collection_to_set = {
          :validate => :post
        }
				collection_to_set.merge!({:filtering_artworks => :get, :index_by_galleries => :get }) if name=='exhibition'
        collection_to_set.merge!({:filtering_contacts => :get}) if name=='group'
				collection_to_set.merge!({:filtering_users => :get}) if name=='user_group'
        parent.resources name.pluralize.to_sym, :member => member_to_set, :collection => collection_to_set
      end
      parent.content '/content/:item_type', :controller => 'content', :action => 'index'
      parent.ajax_content '/ajax_content/:item_type', :controller => 'content', :action => 'ajax_index'
      parent.content_popup '/content_for_popup/:selected_item', :controller => 'content', :action => 'display_item_in_pop_up'
      #TODO delete pop_up, no more used.
    end

    # Newsletter related routes
    admin.unsubscribe_for_newsletter 'admin/unsubscribe_for_newsletter', :controller => 'workspace_contacts', :action => 'unsubscribe'

    # FCKTools route for utilities methods for FCK editor
    admin.connect '/ck_uploads/:item_type', :controller => 'ck_tools', :action => 'upload_from_ck'
    admin.connect '/ck_config', :controller => 'ck_tools', :action => 'config_file'
    admin.connect '/ck_display/tabs/:tab_name', :controller => 'ck_tools', :action => 'tabs'
    admin.connect '/ck_insert/gallery', :controller => 'ck_tools', :action => 'insert_gallery'
    admin.connect '/ajax_item_save/:item_type/:id', :controller => 'ck_tools', :action => "ajax_item_save" 
    admin.connect '/ajax_container_save/:container/:id', :controller => 'ck_tools', :action => "ajax_container_save"
    admin.connect "/emails/sent_mail/:id",:controller=>"emails",:action=>"sent_email"
    admin.connect "/emails/detail_mail/:id",:controller=>"emails",:action=>"detail_email"
    admin.connect "/emails/reply_email/:id",:controller=>"emails",:action=>"reply_email"
    admin.connect "/emails/delete_email/:id",:controller=>"emails",:action=>"delete_email"

    
    # Items created outside any workspace are private or fully public.
    # Items may be acceded by a list that gives all items the user can consult.
    # => (his items, the public items, and items in workspaces he has permissions)
    items_resources(admin)

    CONTAINERS.each do |container|
      admin.resources "#{container.pluralize}".to_sym, :member => { :add_new_user => :any }, :collection => {:validate => :post, :delete_asset => :any} do |con|
        con.resources :subscriptions, :only => [:create, :destroy], :collection => { :request => :any }
        items_resources(con)
        if container == 'workspace'
          con.resources :people, :collection => { :export_people => :any, :import_people => :any, :get_empty_csv => :get, :validate => :post ,:filter => :get }
          con.resources :workspace_contacts, :as => 'contacts', :except => :all, :collection => { :select => [:post, :get], :list => [:post, :get], :subscribe => :get}
        end
        if container == 'website'
          con.resources :analytics, :only => [:index]
          con.resources :menus
        end
        con.resources :zip_uploads
      end
    end
       
		admin.resources :emails, :only => :none, :collection => { :list_all_messages => :get, :display_full_message => :get,:inbox=>:get,:sent_mail=>:get,:compose_mail=>:get,:compose_email=>:post ,:detail_email=>:get}
		
		admin.resources :orders, :collection => { :show_cart => :get, :add_to_cart => :get, :remove_from_cart => :get, :complete_order => :get }
		admin.resources :invoices, :collection => { :validate => :post, :invoicing => :get, :generate_invoice => :post }, :member => { :update_state => :get }
		admin.resources :payments, :only => [:new, :create, :index]
		admin.resources :credit_cards, :only => :none, :collection => { :validate => :post }
		admin.resources :exhibitions_users, :only => :none, :member => { :send_invitation => :get, :update_state => :get }, :collection => { :set_prices => :post }
		admin.resources :periods, :only => [:index, :create, :update, :destroy], :collection => { :validate => :post }
		admin.resources :profiles,:member => {:update_notices => :put }, :collection => { :validate => :post, :filter => :post }
		admin.resources :categories, :only => [:index, :create, :update, :destroy], :collection => { :validate => :post }
		admin.resources :timings, :only => [:index, :create, :destroy], :collection => { :ajax_remove => :get, :validate => :post, :calendar => :get }, :member => { :update_state => :get }
		admin.resources :competitions_subscriptions, :only => :none, :collection => { :validate => :post, :select => :get, :subscribe => :post , :enter => :get, :submit=> :post}
		#admin.resources :competitions_subscriptions, :only => :none, :collection => { :validate => :post, :select => :get, :subscribe => :post }
		admin.resources :competitions_users, :only => :none, :member => { :update_state => :get, :submit_artworks => :post, :artworks_wizard => :get }
		admin.resources :artworks_competitions, :only => :none, :member => { :update_state => :get }, :collection => { :set_marks => :post }
    # Search related routes
    admin.resources :searches, :collection => { :print_advanced => :any, :validate => :post }
    admin.resources :saved_searches, :only => [:create, :index, :destroy], :member => {:results => :get}, :collection => { :validate => :post }

  # Catch Errors and show custom message, avoid SWW
    admin.error '/admin/error/:status' , :controller => 'home', :action => 'error'
    
  end
  #################################################################################
  
  map.connect '/signup', :controller => 'admin/users', :action => 'new'
  # Add Project Specific Routes here!
  # Website Home
  map.resources :contacts, :only => [:new, :create]

	#### GALLERY FRONT
	map.root :controller => "visitors", :action => 'home_page'
		
	['past', 'current', 'future', 'next' ].each do |e|
		map.connect "/#{e}", :controller => :exhibitions, :action => e
		map.connect "/#{e}/artists/:id", :controller => :exhibitions, :action => e
		map.connect "/#{e}/artists/:id/exhibs/:exhib_id", :controller => :exhibitions, :action => e
	end
#	map.connect '/to_exhib', :controller => :exhibitions, :action => 'submit_form'
#	map.connect '/submiting', :controller => :exhibitions, :action => 'submiting', :conditions => { :method => :post }

	map.connect '/artists', :controller => :artists, :action => 'show'
	map.connect '/artists/:filter', :controller => :artists, :action => 'show'
	map.connect '/artists/:filter/:id', :controller => :artists, :action => 'show'
	map.connect '/artists/:filter/:id/exhibs/:exhib_id', :controller => :artists, :action => 'show'

	map.connect '/genres', :controller => :artists, :action => 'genres'
	map.connect '/genres/:genre_id', :controller => :artists, :action => 'genres'
	map.connect '/genres/:genre_id/artists/:id', :controller => :artists, :action => 'genres'
	map.connect '/genres/:genre_id/artists/:id/exhibs/:exhib_id', :controller => :artists, :action => 'genres'

	map.connect '/groups', :controller => :artists, :action => 'groups'
	map.connect '/groups/:group_id', :controller => :artists, :action => 'groups'
	map.connect '/groups/:group_id/artists/:id', :controller => :artists, :action => 'groups'
	map.connect '/groups/:group_id/artists/:id/exhibs/:exhib_id', :controller => :artists, :action => 'groups'
    map.connect '/tojoin', :controller => :artists, :action => 'tojoin'
    map.connect '/tojoin/:group_id', :controller => :artists, :action => 'tojoin'

	map.connect '/competitions', :controller => :competitions, :action => 'show'
	map.connect '/competitions/:competition_id', :controller => :competitions, :action => 'show'

	map.connect '/subscribe', :controller => :visitors, :action => 'new'
	map.connect '/mailing_list', :controller => :visitors, :action => 'mailing_list'
	map.connect '/adding_profile', :controller => :visitors, :action => 'adding_profile'
	map.connect '/studios', :controller => :visitors, :action => 'studios'
	
	map.connect '/login', :controller => :visitors, :action => 'login'
	map.connect '/logout', :controller => 'admin/sessions', :action => 'destroy'
  map.connect '/site/:site_title', :controller => 'websites', :action => 'index'
  map.connect '/site/:site_title/:title_sanitized', :controller => 'websites', :action => 'index'
  map.connect '/:title_sanitized', :controller =>'websites', :action => 'index'
  map.resources :websites, :only => [:index, :update]
  
  
end
