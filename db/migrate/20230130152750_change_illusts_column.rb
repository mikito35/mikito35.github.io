class ChangeIllustsColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :illusts, :name, :string
    add_column :illusts, :model, :string
    remove_column :illusts, :image_model, :string
    remove_column :illusts, :image_name, :string
  end
end
