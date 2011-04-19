
class EmailSystem < ActionMailer::Base

  def email_notification(toaddress,subjectofmail,dodyofmail)
     recipients toaddress
     from       "amit.kumar@pragtech.co.in"
     subject    subjectofmail
     body       "theemail" => dodyofmail
     content_type "text/html" 
  end
  

  
    
        
    
      
      
  
    
  



end
