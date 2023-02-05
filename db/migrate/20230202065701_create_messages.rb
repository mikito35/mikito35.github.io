class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.text :name
      t.text :content
      t.text :answer

      t.timestamps
    end
  end
end
