class CreateSubjectCarrerUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :subject_carrer_users do |t|
      t.integer :points
      t.references :subject, foreign_key: true
      t.references :carrer_user, foreign_key: true

      t.timestamps
    end
  end
end
