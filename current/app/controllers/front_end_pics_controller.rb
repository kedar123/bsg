class FrontEndPicsController < ApplicationController
    layout "gallery_promoting"  
    def index
          @front_end_pics = Frontendpic.find(:all,:order=>"created_at desc",:limit=>5)
    end
    
    def new
      @front_end_pics = Frontendpic.new
    end
    
    def update
        @front_end_pics = Frontendpic.find(params[:id])
        @front_end_pics.update_attributes(params[:front_end_pic])
    end
    
    def create
           front_end_pics = Frontendpic.new(params[:front_end_pic])    
           front_end_pics.save!
           redirect_to :action=>"index"
    end
   
    def destroy
        front_end_pics = Frontendpic.find(params[:id])
        front_end_pics.destroy
        redirect_to :back    
    end
end

