class AddNameToSubjectCarrerUser < ActiveRecord::Migration[5.0]
  def change
    add_column :subject_carrer_users, :name, :string
  end
end
