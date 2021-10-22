class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.boolean :dei_enabled

      t.timestamps
    end
  end
end
