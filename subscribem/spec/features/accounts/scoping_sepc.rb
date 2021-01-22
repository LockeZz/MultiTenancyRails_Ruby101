require "rails_helper"

feature "Account scoping" do
    let!(:account_a) {FactoryBot.create(:account_with_schema)}
    let!(:account_b) {FactoryBot.create(:account_with_schema)}
    before do 
        Apartment::Tenant.switch(account_a.subdomain) do
            Thing.create(:name => "Account A's Thing")
        end
        Apartment::Tenant.switch(account_b.subdomain) do
            Thing.create(:name => "Account B's Thing")
        end
        Apartment::Tenant.reset
    end
    scenario "displays only account A's records" do
        sign_in_as(:user => account_a.owner, :account => account_a)
        visit main_app.things_url(:subdomain => account_a.subdomain)
        expect(page).to have_content("Account A's Thing")
        expect(page).to_not have_content("Account B's Thing")
    end
    scenario "displays only account B's records" do
        sign_in_as(:user => account_b.owner, :account => account_b)
        visit main_app.things_url(:subdomain => account_b.subdomain)
        expect(page).to have_content("Account B's Thing")
        expect(page).to_not have_content("Account A's Thing")    
    end

end