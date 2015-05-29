class RenameTypeToEffect < ActiveRecord::Migration
  def change
    rename_column :pedals, :type, :effect
  end
end
