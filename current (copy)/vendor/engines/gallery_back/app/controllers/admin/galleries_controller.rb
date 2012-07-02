# This controller is managing the different actions relative to the Image item.
#
# It is using a mixin function called 'acts_as_item' from the ActsAsItem::ControllerMethods::ClassMethods,
# so see the documentation of that module for further informations.
#
class Admin::GalleriesController < Admin::ApplicationController

before_filter :workspace_id

def  workspace_id
  if params[:gallery]
    params["gallery"]["workspace_ids"]=Workspace.find(:first, :conditions => { :creator_id => current_user.id}).id.to_s
    p "im sending here the workspace"
    p params["gallery"]
  end  
end
  
	# Method defined in the ActsAsItem:ControllerMethods:ClassMethods (see that library fro more information)
	acts_as_item

end