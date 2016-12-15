class CreateCarrers < ActiveRecord::Migration[5.0]
  def change
    create_table :carrers do |t|
      t.string :name
      
      t.timestamps
    end
  end
end
