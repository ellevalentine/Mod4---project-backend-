class CharityUser < ApplicationRecord
  belongs_to :charity
  belongs_to :user
end
