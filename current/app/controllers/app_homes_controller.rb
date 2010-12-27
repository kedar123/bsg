class AppHomesController < ApplicationController
# i want to changeeeee
 layout "gallery_promoting"  
  def index
    @app_home = AppHome.find(:all,:limit=>1,:order=>"created_at desc")
    if params[:id] == "front"
        #render :layout => "front"
        render :action=> "forntindex" ,:layout=>"front"
    else
      
    end
  end

  def show
    @app_home = AppHome.find(params[:id])
  end

  def new
    @app_home = AppHome.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @app_home }
    end
  end

  
  def edit
    @app_home = AppHome.find(params[:id])
  end

  
  def create
    drawing = AppHome.new(params[:app_home])
    drawing.save
    redirect_to   app_homes_path
  end

  
  def update
    @app_home = AppHome.find(params[:id])
    @app_home.update_attributes!(params[:app_home])
	redirect_to :action=>"index"
 
  end

  
  def destroy
        @app_home = AppHome.find(params[:id])
        @app_home.destroy
         redirect_to :action=>"index"
  end
end
