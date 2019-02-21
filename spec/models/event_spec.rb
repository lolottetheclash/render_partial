require 'rails_helper'


RSpec.describe Event, type: :model do

	before(:each) do 
		@event = FactoryBot.create(:event)
	end


	context "validation" do

	    it "is valid with valid attributes" do
	      expect(@event).to be_a(Event)
	    end
	end


	describe "title" do
		it "is valid with valid attributes" do
	 	  expect(@event).to validate_presence_of(:title) 
	 	end
	end


	describe "price" do
		it "is valid with valid attributes" do
	 	  expect(@event.price).to be_a(Integer)
	 	end
	end


	describe "location" do
		it "is valid with valid attributes" do
	 	  expect(@event).to validate_presence_of(:location) 
	 	end
	end

	describe "duration" do
		it "is valid with valid attributes" do
		  expect(@event).to validate_presence_of(:duration) 

		end
 	end


 	describe "description" do
      it { expect(@event).to validate_length_of(:description).is_at_least(20) }
    end


	context "associations" do

    describe "events" do
      it { expect(@event).to have_many(:attendances) }
    end

  end







end
