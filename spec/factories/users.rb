FactoryBot.define do
  factory :user do
    first_name { "lolotte" }
    last_name { "the clash" }
    description { "un grand grand grand texte de description" }
    email { "lolottetheclash@hotmail.com" }
    encrypted_password { "MyString" }
  end
end
