FactoryBot.define do
  factory :message do
    name { "MyString" }
    email { "MyString" }
    phone { "MyString" }
    content { "MyText" }
    widget { nil }
  end
end
