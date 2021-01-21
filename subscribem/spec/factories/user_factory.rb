FactoryBot.define do
    factory :user, class: "Subscribem::User" do
        sequence :email do |n| 
            "test#{n}@example.com"
        end
        password {"asdasd"}
        password_confirmation {"asdasd"}
    end
end