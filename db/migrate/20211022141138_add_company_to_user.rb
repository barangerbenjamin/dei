class AddCompanyToUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :company, index: true, foreign_key: true
  end
end
