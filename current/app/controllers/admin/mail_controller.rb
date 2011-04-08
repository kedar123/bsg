class Admin::MailController < ApplicationController
  layout "gallery_promoting"
 
 def index
    redirect_to new_session_path and return unless logged_in?
    @folder = current_user.inbox
    show
   # render :action => "show"
  end

  def show
    #@folder ||= current_user.mailfolders.find(params[:id])
    if params[:id]
    @folder ||= current_user.mailfolders.find(params[:id])
    @messages = @folder.messages.paginate_not_deleted :all, :per_page => 10, :page => params[:page],:include => :message, :order => "messages.created_at DESC"
  end
  end
  
  def trash
    @folder = Struct.new(:name, :user_id).new("Trash", current_user.id)
    @messages = current_user.received_messages.paginate_deleted :all, :per_page => 10, :page => params[:page],
          :include => :message, :order => "messages.created_at DESC"
    render :action => "show"
  end
  
  def compose_new_mail
     @message = current_user.sent_messages.build
     p @message
     p "@messagessssss"
  end  
 
  def create_sent_mail
    @message = current_user.sent_messages.build(params[:message])
    if @message.save
      flash[:notice] = "Message sent."
      redirect_to :action => "index"
    else
      render :action => "new"
    end
  end
 
end
