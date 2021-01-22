
class Thing < ApplicationRecord
    # scoped_to_account

    def self.scoped_to(account)
        where( :account_id => account )
    end
end
