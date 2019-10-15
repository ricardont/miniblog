FactoryBot.define do
  factory :post do
    user_id { 1 }
    content { "MyText" }
    media { "MyText" }
    recipient_id { 1 }
  end
end
