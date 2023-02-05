class AddIllustColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :illusts, :image_name, :string
    add_column :illusts, :image_model, :string
    add_column :illusts, :title, :string
    remove_column :illusts, :name, :string
  end
end
