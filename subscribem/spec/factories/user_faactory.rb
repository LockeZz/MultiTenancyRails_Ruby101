FactoryBot.define do
    factory :user, class: "Subscribem::User" do
        sequence(:email) { |n| "test#{n}@example.com" }
        password {"asdasd"}
        password_confirmation {"asdasd"}
    end
end