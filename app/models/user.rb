class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	has_many :attendances
	# la ligne de bas est enlevée
	#has_many :events, through: :attendances
	has_many :as_admin_events, foreign_key: 'admin_id', class_name: "Event"
	has_many :as_guest_events, foreign_key: 'guest_id', class_name: "Attendance"

	after_create :welcome_send

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end



 
end
