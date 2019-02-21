FactoryBot.define do
  factory :attendance do
    stripe_customer_id { "321" }
    guest { FactoryBot.create(:user)  }
    event { FactoryBot.create(:event) }
  end
end
