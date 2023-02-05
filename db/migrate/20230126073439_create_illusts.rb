class CreateIllusts < ActiveRecord::Migration[7.0]
  def change
    create_table :illusts do |t|
      t.text :name

      t.timestamps
    end
  end
end
