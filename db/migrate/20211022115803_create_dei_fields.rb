class CreateDeiFields < ActiveRecord::Migration[6.1]
  def change
    create_table :dei_fields do |t|
      t.string :name
      t.references :dei_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
