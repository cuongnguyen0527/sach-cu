class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title, null: false, default: ''
      t.integer :price, null: false, default: 0
      t.text :description

      t.timestamps
    end
  end
end
