class Account < ApplicationRecord
    # has_many :mouths, dependent: :destroy
    self.primary_key="mine"
end
