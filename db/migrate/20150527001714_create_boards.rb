class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :title
      t.string :audio
      t.string :instrument
      t.references :user
      t.timestamps null: false
    end
  end
end
