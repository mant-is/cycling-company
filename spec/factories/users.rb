FactoryBot.define do
  factory :user do
    name { "User name" }
    email { "test@email.net" }
    password { "alpha_numeric" }
    password_confirmation { "alpha_numeric" }
  end
end  
