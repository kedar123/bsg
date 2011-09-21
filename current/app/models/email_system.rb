
class EmailSystem < ActionMailer::Base

  def email_notification( toaddress , subjectofmail , dodyofmail )
    
     recipients   toaddress
     from         "test@pragtech.co.in"
     subject      subjectofmail
     body         "theemail" => dodyofmail
     content_type "text/html"
    #attachment "image" do |a|
    #a.body = File.read("public/images/bsg.png")
    #a.filename = "bsg.png"
    #a.body = File.read("/uploaded_files/competition/artwork/#{a.id}/medium/#{a.avatar_file_name}")
  #end

     
  end
  
  
  def email_notification_selected( toaddress , subjectofmail , dodyofmail,artwork_selected )
    
     recipients   toaddress
     from         "test@pragtech.co.in"
     subject      subjectofmail
     body         "theemail" => dodyofmail
     content_type "text/html"
    attachment "image/jpeg" do |a|
    a.body = File.read("public/images/bsg.png")
    a.filename = "bsg.png"
    a.body = File.read("#{RAILS_ROOT}/public/uploaded_files/competition/artwork/#{artwork_selected.id}/medium/#{artwork_selected.avatar_file_name}")
  end

     
  end
  



  def email_notification_unpaid(toaddress , subjectofmail , dodyofmail,current_object)
     recipients   toaddress
     from         "test@pragtech.co.in"
     subject      subjectofmail
     body         "theemail" => dodyofmail
    content_type   "text/html"
       
    attachment "application/pdf" do |a|
        a.body = File.read("#{RAILS_ROOT}/public/unpaid_invoice/#{current_object.id}current_object.pdf")
        a.filename = "#{current_object}.pdf"
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
