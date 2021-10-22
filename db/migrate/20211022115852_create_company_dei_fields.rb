class CreateCompanyDeiFields < ActiveRecord::Migration[6.1]
  def change
    create_table :company_dei_fields do |t|
      t.references :company, null: false, foreign_key: true
      t.references :dei_field, null: false, foreign_key: true

      t.timestamps
    end
  end
end
