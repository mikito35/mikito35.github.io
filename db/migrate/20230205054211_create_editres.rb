class CreateEditres < ActiveRecord::Migration[7.0]
  def change
    create_table :editres do |t|
      t.text :name
      t.timestamps
    end
  end
end
