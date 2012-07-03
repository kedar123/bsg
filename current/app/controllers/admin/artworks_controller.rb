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
 
       
     
      
     if str[1]== "art" 
       com = Commission.find(:first,:conditions=>["artwork_id = ? and edition_no = ?",str[3],str[4]]) 
       
       if com.blank?
        p "first time i will be here"
       com = Commission.new(:artwork_id=>str[3],:edition_no=>str[4])
       p com.save
       p "ssssssssss"
       end
       p com
         if str[2]=="comm"    
            com.update_attribute('art_comm',params[:update_value])
            
         end
         
         if str[2]=="paid" and params[:update_value]=="paid"
           
            com.update_attribute('art_comm_paid',1)
         end 
         
         if str[2]=="paid" and params[:update_value]=="Unpaid"
            com.update_attribute('art_comm_paid',0)
         end
         
         if str[2]=="salesp"
            com.update_attribute('sales_person',params[:update_value])
         end
         
         if str[2]=="salespc"
           com.update_attribute('sales_person_comm',params[:update_value])  
         end
         
         if str[2]=="salpcp" and params[:update_value]=="paid"
           p "i am updating the sales person commission"
            com.update_attribute('sales_person_commission_paid',1)
         end
         
         if str[2]=="salpcp" and params[:update_value]=="Unpaid"
            com.update_attribute('sales_person_commission_paid',0)
         end
     end
 
 
   
 
      if str[1]== "comp" 
        com = Commission.find(:first,:conditions=>["artworks_competition_id = ? and edition_no = ?",str[3],str[4]]) 
       
       if com.blank?
        p "first time i will be here"
       com = Commission.new(:artworks_competition_id=>str[3],:edition_no=>str[4])
       p com.save
       p "ssssssssss"
       end
       p com
         if str[2]=="comm"    
            com.update_attribute('art_comm',params[:update_value])
           
         end
         
         if str[2]=="paid" and params[:update_value]=="paid"
           
            com.update_attribute('art_comm_paid',1)
         end 
         
         if str[2]=="paid" and params[:update_value]=="Unpaid"
            com.update_attribute('art_comm_paid',0)
         end
         
         if str[2]=="salesp"
            com.update_attribute('sales_person',params[:update_value])
         end
         
         if str[2]=="salespc"
           com.update_attribute('sales_person_comm',params[:update_value])  
         end
         
         if str[2]=="salpcp" and params[:update_value]=="paid"
           p "i am updating the sales person commission"
            com.update_attribute('sales_person_commission_paid',1)
         end
         
         if str[2]=="salpcp" and params[:update_value]=="Unpaid"
            com.update_attribute('sales_person_commission_paid',0)
         end
     end             
         
  end
    
end
