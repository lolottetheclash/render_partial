class Attendance < ApplicationRecord
  belongs_to :guest, class_name: "User"
  belongs_to :event


  after_create :welcome_send

  def welcome_send
   	 AdminMailer.welcome_email(self).deliver_now
  end

end
