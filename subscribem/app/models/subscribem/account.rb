module Subscribem
  class Account < ApplicationRecord
    belongs_to :owner, :class_name => "Subscribem::User"
    accepts_nested_attributes_for :owner

  end
end
