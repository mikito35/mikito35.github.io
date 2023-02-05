class RenameEditor < ActiveRecord::Migration[7.0]
  def change
    rename_table :editres, :editors
  end
end
