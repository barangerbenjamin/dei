class Company < ApplicationRecord

  has_many :company_dei_fields
  has_many :users
end
