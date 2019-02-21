FactoryBot.define do
  factory :event do
    start_date { "2019-02-13 15:03:45" }
    duration { 15 }
    title { "mon titre d'evenement" }
    description { "Une splendide et trèèèèèes belle descritpion d'evenement" }
    price { 20 }
    location { "toulouse" }
    admin {user = FactoryBot.create(:user)}
  end
end
