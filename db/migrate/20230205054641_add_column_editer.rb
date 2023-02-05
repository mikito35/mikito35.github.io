class AddColumnEditer < ActiveRecord::Migration[7.0]
  def change
    add_column :editres, :password_digest, :string
  end
end
