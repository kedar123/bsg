class Admin::ArtworksController < ApplicationController
  
  def index
    @current_objects = Artwork.find(:all,:limit=>10)
    @all_comp_art_work = ArtworksCompetition.find(:all,:limit=>10)
    render  :layout=> "gallery_promoting"
  end
  
  def edit_inplace
  
  p " I m in  Artworks controller "
  
  p params
    p "these are my params"
       
    render :text=>params[:update_value]
    
    puts params[:update_value]
    puts " Saving Data.......................................................>>>>>>>"
    
    #artworks=Artwork.find(:all)
    #p artworks
        
        str =  params[:element_id].split("_")
        p str[0]
        p str[1]
        p str[2]
        p str[3]
        p str[4]
       artwork = Artwork.find(str[3])
 
      
     if str[1]== "art" 
         if str[2]=="comm"    
            artwork.update_attribute('artists_commission',params[:update_value])
         end
         
         if str[2]=="paid" and params[:update_value]=="paid"
           p "i am updating the artist commission"
            artwork.update_attribute('artists_commission_paid',1)
         end 
         
         if str[2]=="paid" and params[:update_value]=="Unpaid"
            artwork.update_attribute('artists_commission_paid',0)
         end
         
         if str[2]=="salesp"
            artwork.update_attribute('sales_person',params[:update_value])
         end
         
         if str[2]=="salespc"
            artwork.update_attribute('sales_person_commission',params[:update_value])  
         end
         
         if str[2]=="salpcp" and params[:update_value]=="paid"
           p "i am updating the sales person commission"
            artwork.update_attribute('sales_person_commission_paid',1)
         end
         
         if str[2]=="salpcp" and params[:update_value]=="Unpaid"
            artwork.update_attribute('sales_person_commission_paid',0)
         end
     end
 
 
=begin    
 
      if str[1]== "comp" 
         if str[2]=="comm"    
            artcomp.update_attribute('artists_comm',params[:update_value])
         end
         if str[2]=="paid" and params[:update_value]=="paid"
            artcomp.update_attribute('artists_comm_paid',1)
            else
            artcomp.update_attribute('artists_commission_paid',0)
         end
         
         if str[2]=="salesp"
            artcomp.update_attribute('sales_prsn',params[:update_value])
         end
         
         if str[2]=="salespc"
            artcomp.update_attribute('sales_person_comm',params[:update_value])  
         end
         
         if str[2]=="salpcp" and params[:update_value]=="paid"
            artcomp.update_attribute('sales_person_comm_paid',1)
            else
            artcomp.update_attribute('sales_person_commission_paid',0)
         end
     end
 
=end               
      
 
         
  end
    
end
