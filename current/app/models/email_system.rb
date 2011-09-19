
class EmailSystem < ActionMailer::Base

  def email_notification( toaddress , subjectofmail , dodyofmail, image )
   
     recipients   toaddress
     from         "test@pragtech.co.in"
     subject      subjectofmail
     body         "theemail" => dodyofmail
     content_type "text/html"
   #attachment "image" #do |a|
    #a.body = File.read("public/images/bsg.png")
    #a.filename = "bsg.png"
    #a.body = File.read("/uploaded_files/competition/artwork/@emailsendarray/thumb/ @artworkarray")
  #end

     
  end

  def email_notification_selected_artwork( toaddress , subjectofmail , dodyofmail,selected_artwork )
   p "im from email notificationb"
     recipients   toaddress
     from         "test@pragtech.co.in"
     subject      subjectofmail
     body         "theemail" => dodyofmail
     content_type "text/html"
     attachment "image/png" do |a|
        a.body = File.read("/uploaded_files/competition/artwork/#{selected_artwork.id}/thumb/#{selected_artwork.avatar_file_name}")
        a.filename = "#{selected_artwork.avatar_file_name}"
        end


  end
  

  def send_selected_exhibiion_user_email(toaddress , subjectofmail , dodyofmail)
    recipients   toaddress
     from         "test@pragtech.co.in"
     subject      subjectofmail
     body         "theemail" => dodyofmail
     content_type "text/html" 
   

  end
    
        
    
      
      
  
    
  



end
