class CreatePedals < ActiveRecord::Migration
  def change
    create_table :pedals do |t|
      t.string :name
      t.string :brand
      t.string :type
      t.references :board
      t.timestamps null: false
    end
  end
end
