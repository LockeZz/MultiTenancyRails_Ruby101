FactoryBot.define do
    factory :account, class: Subscribem::Account do
        sequence :name do |n| 
            "Test Account ##{n}" 
        end
        sequence :subdomain do |n| 
            "test#{n}"    
        end
        association :owner, :factory => :user
        after(:create) do |account|
            account.users << account.owner
        end
    end
end