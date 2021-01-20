class AddOwnderIdToSubscribemAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :subscribem_accounts, :owner_id, :integer
  end
end
