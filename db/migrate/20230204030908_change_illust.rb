class ChangeIllust < ActiveRecord::Migration[7.0]
  def change
    add_column :illusts, :transparent, :string
  end
end
