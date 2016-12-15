class CreateCarrerUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :carrer_users do |t|
      t.integer :points
      t.references :user, foreign_key: true
      t.references :carrer, foreign_key: true

      t.timestamps
    end
  end
end
