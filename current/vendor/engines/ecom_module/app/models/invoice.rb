class Invoice < ActiveRecord::Base

	belongs_to :client, :class_name => 'User'
	belongs_to :creator, :class_name => 'User'
	belongs_to :purchasable, :polymorphic => true

	has_one :payment

	serialize :billing_address
	serialize :shipping_address

	validates_presence_of :title, :client_id, :final_amount#, :purchasable_type, :purchasable_id
	# TODO but for exhibition you have two invoices ............
	#validate :no_duplication

	def no_duplication
		errors.add_to_base("Invoice already generated for that order") if self.purchasable && self.purchasable.invoices.first
	end

#	before_save do
#		self['final_amount'] ||= self['original_amount']
#	end

	after_create :sending_to_client

	def generate_number
    record = true
    while record
      random = "I#{Array.new(9){rand(9)}.join}"
      record = Invoice.find(:first, :conditions => ["number = ?", random])
    end
    self.number = random
		return random
  end

	def sending_to_client
    
    if self.purchasable_type == 'ExhibitionsUser'
    elsif self.purchasable_type == 'CompetitionsUser'
       self.sent_at = Time.now
       self.save
    else  
          adminuser = User.find_by_login("admin");
          @message = adminuser.sent_messages.new
          @message.subject = "Invoice " + self.number.to_s
          @message.body = "Hello, Please find attached your invoice For Your Payment For "
          @message.prepare_copies(self.client.email)
          @message.save
          if QueuedMail.add('UserMailer', 'send_invoice', [self, self.client], 0, true)
            self.sent_at = Time.now
            self.save
          else
            raise "Invoice email not queued"
          end
    end
    
	end

    def  accept_cash_or_cheque_or_bank_payment(cashorchequeorbank)
            self.state = "created"
            self.payment_medium = cashorchequeorbank
          	if self.save
            		if self.purchasable_type == 'ExhibitionsUser' || self.purchasable_type == 'CompetitionsUser' || self.purchasable_type == 'Order'
				        purc = self.purchasable
				        purc.state = "accepted"
				    end
			end	        
    end


  def self.search_condition(params)
    search_conditions = ""
    if  !params[:invno].blank?
          search_conditions = "number = #{params[:invno]}"
      end  
      if !params[:contact].blank?
         fullname = params[:contact].to_s.strip.split(' ') 
         if fullname.length == 1
           profile = Profile.find(:all,:conditions=>["first_name = ?",fullname[0]])
         elsif fullname.length == 2
           profile = Profile.find(:all,:conditions=>["first_name = ? and last_name = ?",fullname[0],fullname[1]])
         end 
         p "i got the profileeeeee"
         p profile
         #here i got profiles
          user_id = ""
          profile.each do |ep|
            user_id << ep.user.id.to_s << ","
          end
          p "ssssssssssssssss"
          p user_id
         #here i got user id from profiles
           if  user_id[user_id.length-1,user_id.length] == ","
	               p "qqqqqqqqqqqqqqqqqq"
                 p user_id
	               user_id[user_id.length-1] = ''
           end
       p "useridddddddd"
       p user_id
      
        if search_conditions.blank?
          search_conditions = "client_id in(#{user_id})"
        else
          search_conditions =  search_conditions << " and client_id in(#{user_id})"
        end
      
      end
      
      if !params[:title].blank?
        if search_conditions.blank?
          search_conditions = "title = #{params[:title]}"
        else
          search_conditions =  search_conditions << " and title = '#{params[:title]}'"
        end
      end
      
      if !params[:fromdurdate].blank? and params[:toduedate].blank?
        if search_conditions.blank?
          p "22222222222"
          search_conditions = "deadline = #{params[:fromdurdate]}"
        else
          p "333333333333333"
          search_conditions =  search_conditions << " and deadline = #{params[:fromdurdate]}"
        end
      end
      if params[:fromdurdate].blank? and !params[:toduedate].blank?
        if search_conditions.blank?
          p "4444444444444"
          search_conditions = "deadline = #{params[:fromdurdate]}"
        else
          p "5555555555555555555555"
          search_conditions =  search_conditions << " and deadline = #{params[:toduedate]}"
        end
      end
      if !params[:fromdurdate].blank? and !params[:toduedate].blank?
        if search_conditions.blank?
          p "here is the search cond"
          search_conditions = "deadline >= #{params[:fromdurdate]} and deadline <= #{params[:toduedate]}"
        else
          p "11111111"
          search_conditions =  search_conditions << " and deadline >= #{params[:fromdurdate]} and deadline <= #{params[:fromdurdate]}"
        end
      end


    
      if !params[:fromsenton].blank? and params[:tosenton].blank?
        if search_conditions.blank?
          p "22222222222"
          search_conditions = "sent_at = #{params[:fromsenton]}"
        else
          p "333333333333333"
          search_conditions =  search_conditions << " and sent_at = #{params[:fromsenton]}"
        end
      end
      if params[:fromsenton].blank? and !params[:tosenton].blank?
        if search_conditions.blank?
          p "4444444444444"
          search_conditions = "sent_at = #{params[:tosenton]}"
        else
          p "5555555555555555555555"
          search_conditions =  search_conditions << " and sent_at = #{params[:tosenton]}"
        end
      end
      if !params[:fromsenton].blank? and !params[:tosenton].blank?
        if search_conditions.blank?
          p "here is the search cond"
          search_conditions = "sent_at >= #{params[:fromsenton]} and sent_at <= #{params[:tosenton]}"
        else
          p "11111111"
          search_conditions =  search_conditions << " and sent_at >= #{params[:fromsenton]} and sent_at <= #{params[:tosenton]}"
        end
      end

    
      
    
    if params[:paid] == "on"
        if search_conditions.blank?
          p "4444444444444"
          search_conditions = "paid = true"
        else
          p "5555555555555555555555"
          search_conditions =  search_conditions << " and paid = true"
        end
    end
    
      if !params[:frompaidon].blank? and params[:topaidon].blank?
        if search_conditions.blank?
          p "22222222222"
          search_conditions = "sent_at = #{params[:frompaidon]}"
        else
          p "333333333333333"
          search_conditions =  search_conditions << " and sent_at = #{params[:frompaidon]}"
        end
      end
      if params[:frompaidon].blank? and !params[:topaidon].blank?
        if search_conditions.blank?
          p "4444444444444"
          search_conditions = "sent_at = #{params[:topaidon]}"
        else
          p "5555555555555555555555"
          search_conditions =  search_conditions << " and sent_at = #{params[:topaidon]}"
        end
      end
      if !params[:frompaidon].blank? and !params[:topaidon].blank?
        if search_conditions.blank?
          p "here is the search cond"
          search_conditions = "sent_at >= #{params[:fromsenton]} and sent_at <= #{params[:topaidon]}"
        else
          p "11111111"
          search_conditions =  search_conditions << " and sent_at >= #{params[:fromsenton]} and sent_at <= #{params[:topaidon]}"
        end
      end
     
      if !params[:email].blank? 
         pr = Profile.find(:first,:conditions=>["email_address = ?",params[:email].strip])
        if search_conditions.blank?
          p "here is the search cond"
          if pr
          search_conditions = "client_id  =  #{pr.user.id}  "
          end
        else
          p "11111111"
          if pr
          search_conditions =  search_conditions << " and client_id  =  #{pr.user.id}"
          end
        end
      end
    search_conditions 
  end  

	def validating(payment_mode="online_validated")
		self.state = 'validated'
		self.validated_at = Time.now
		self.payment_medium = payment_mode
		
		if self.purchasable_type == 'CompetitionsUser' #this is because because im calculating more amount while making the payment
		    invoice = Invoice.find(:all,:conditions=>["purchasable_type = ? and client_id = ? and purchasable_id = ?",'CompetitionsUser',self.client_id,self.purchasable_id])
		    invoice.each do |inv|
		    inv.state = "validated"
		    inv.save
		    end
		end
		p "i saved here myself as validated"
    p self
		if self.save
			if self.purchasable_type == 'ExhibitionsUser' || self.purchasable_type == 'CompetitionsUser' || self.purchasable_type == 'Order'

				purc = self.purchasable
        
                   if  purc.instance_of? ExhibitionsUser 
                         invoice = Invoice.find(:last,:conditions=>["purchasable_type = ? and  client_id = ? and purchasable_id = ?","ExhibitionsUser" , self.client_id,self.purchasable_id])
                         invoice1 = Invoice.find(:first,:conditions=>["purchasable_type = ? and  client_id = ? and purchasable_id = ?","ExhibitionsUser" , self.client_id,self.purchasable_id])

                          if  invoice.state == "validated"  and  invoice1.state == "validated"
                               purc.state = "validated"
                          end
                  else
                    
            purc.state = "validated"
             
            end
              if purc.save
                # email
                    if !self.payment
                        if payment = Payment.create(:invoice_id => self.id, :user_id => self.client_id, :amount_in_cents => self.final_amount * 100, :state => payment_mode)
                                else
                          raise "Error during payment creation : "+payment.errors.inspect
                        end
                    else
                      payment = self.payment
                      # #raise "Payment already done ..."
                    end
                payment.sending_confirmation_to_client
              else
                raise "Purchasable object and payment not done ..."
              end
			else


         if self.purchasable_type == 'Invoice'
         else 
           raise "samerelapute"
         end
        
			end
		else
			raise self.errors.inspect
		end
	end

	def billing_address_s
		self.billing_address.values.join(', ')
	end

	def shipping_address_s
		self.shipping_address.values.join(', ')
	end
 
end
