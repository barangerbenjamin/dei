class CreateDeiFieldAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :dei_field_answers do |t|
      t.references :user, null: false, foreign_key: true
      t.references :dei_field, null: false, foreign_key: true
      t.string :encrypted_answer
      t.string :encrypted_answer_iv

      t.timestamps
    end
  end
end
