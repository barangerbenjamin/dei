class DeiField < ApplicationRecord
  belongs_to :dei_category
  has_many :dei_field_answers
end
