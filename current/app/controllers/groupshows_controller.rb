class GroupshowsController < ApplicationController
  # GET /groupshows
  # GET /groupshows.xml
  layout "gallery_promoting"  
  def index
    @groupshows = Groupshow.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @groupshows }
    end
  end
  
  def add_user_to_groupshow
      @user = User.find(params[:id])
      @groupshows = Groupshow.find(:all)
      usergroupshows = Usergroupshow.find(:all,:conditions=>["user_id = ?",@user.id])
      @selectedtitlearray = []
      usergroupshows.each do |x| @selectedtitlearray << x.groupshow.title end
  end
    
  def  addusergroupshow
    if params[:groupshows] 
       #grpname = Groupshow.find(params[:groupshows][:user_ids])
       #usergroupshow =  Usergroupshow.find(:all,:conditions=>["user_id = ? and groupshow_id = ? ",params[:id],params[:groupshows][:user_ids]])
         params[:groupshows][:user_ids].each do |userid|     
           usergroupshow =  Usergroupshow.find(:all,:conditions=>["user_id = ? and groupshow_id = ? ",params[:id],userid])
          if usergroupshow.blank?
                usergroupshow = Usergroupshow.new
                usergroupshow.groupshow_id = userid
                usergroupshow.user_id = params[:id]
                usergroupshow.state = "created"
                usergroupshow.save
                flash[:notice] = "User Is Added To GroupShows"
          else
            flash[:notice] = "User Is Already Get Added To Groupshow"
          end  
         end
       
    else
        flash[:notice] = "Please Select The Group"
    end    
    redirect_to :back
  end  
    
  # GET /groupshows/1
  # GET /groupshows/1.xml
  def show
    @groupshow = Groupshow.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @groupshow }
    end
  end

  # GET /groupshows/new
  # GET /groupshows/new.xml
  def new
    @groupshow = Groupshow.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @groupshow }
    end
  end

  # GET /groupshows/1/edit
  def edit

    @groupshow = Groupshow.find(params[:id])
   

  end

  # POST /groupshows
  # POST /groupshows.xml
  def create
    @groupshow = Groupshow.new(params[:groupshow])

    respond_to do |format|
      if @groupshow.save
        format.html { redirect_to(@groupshow, :notice => 'Groupshow was successfully created.') }
        format.xml  { render :xml => @groupshow, :status => :created, :location => @groupshow }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @groupshow.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /groupshows/1
  # PUT /groupshows/1.xml
  def update
    @groupshow = Groupshow.find(params[:id])

    respond_to do |format|
      if @groupshow.update_attributes(params[:groupshow])
        format.html { redirect_to(@groupshow, :notice => 'Groupshow was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @groupshow.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /groupshows/1
  # DELETE /groupshows/1.xml
  def destroy
     begin 
     usergroupshow =  Usergroupshow.find(:all,:conditions=>["groupshow_id = ? ",params[:id]])
     for ugs in usergroupshow
       Invoice.delete_all("purchasable_type = 'Usergroupshow' and purchasable_id = #{ugs.id}") 
     end
     rescue
     end
    @groupshow = Groupshow.find(params[:id])
    @groupshow.destroy
    
    respond_to do |format|
      format.html { redirect_to(groupshows_url) }
      format.xml  { head :ok }
    end
  
  end
end
