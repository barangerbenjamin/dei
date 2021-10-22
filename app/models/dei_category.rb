class DeiCategory < ApplicationRecord

  has_many :dei_fields
  has_many :dei_field_answers, through: :dei_fields
end
