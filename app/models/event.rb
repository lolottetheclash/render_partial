class Event < ApplicationRecord
		has_many :attendances	
		has_one_attached :avatar


		#la ligne du bas est enlevée
		#has_many :guests, through: :attendances

		belongs_to :admin, class_name: "User"

 		# La date de début est obligatoire et il est impossible de créer un événement dans le passé
	    validates :start_date, presence: true
		#validate :expiration_date_cannot_be_in_the_past

 		# Le titre est obligatoire et doit faire entre 5 et 140 caractères
		validates :title, presence: true,
		length: {in: 5..140}

		# La description est obligatoire et doit faire entre 20 et 1000 caractères 
 		validates :description, presence: true, length: {in: 20..1000}
 

 		# Le prix est obligatoire et compris entre 1 et 1000
		validates :price, presence: true,
		inclusion: {in: 1..1000}

		validates :location, presence: true

		# La durée est obligatoire et la durée doit être strictement positive et un multiple de 5
		 validates :duration, presence: true, numericality: { only_integer: true }
		# :divisible_by_five


  def expiration_date_cannot_be_in_the_past
    if expiration_date.present? && expiration_date.past?
      errors.add(:start_date, "can't be in the past")
    end
  end    






    def divisible_by_five
      unless duration%5 == 0
        self.errors.add(:duration, "is not divisible by 5")
      end
    end
 
 




 end