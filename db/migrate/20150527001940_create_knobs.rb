class CreateKnobs < ActiveRecord::Migration
  def change
    create_table :knobs do |t|
      t.string :name
      t.string :value
      t.references :pedal
      t.timestamps null: false
    end
  end
end
