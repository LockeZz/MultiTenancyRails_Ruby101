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

        # factory :account_with_schema do
        #     after(:create) do |account|
        #         account.create_schema 
        #     end
        # end
    end
end