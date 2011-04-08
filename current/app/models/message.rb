class Message < ActiveRecord::Base
  belongs_to :author, :class_name => "User"
  has_many :message_copies
  has_many :recipients, :through => :message_copies
  before_create :prepare_copies
  
  attr_accessor  :to # array of people to send to
  attr_accessible :subject, :body, :to
  
  def prepare_copies
    p "from toooooooooooooooooooooooooooooo"
    p to
    return if to.blank?
    
    to.each do |recipient|
      p "imin eachhhhhhhhhhhhhhhhhhhhhhhhhhh"
      p recipient
      recipient = User.find(recipient)
      p "from modell foundddddddddddddddd"
      p recipient
      p recipient.id
      p recipient.inbox.id
      p "im nillll"
      p message_copies.build(:recipient_id => recipient.id, :mailfolder_id => recipient.inbox.id)
      p "not buildddd"
    end
  end
end
