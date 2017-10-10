class CreateMagazines < ActiveRecord::Migration[5.1]
  def change
    create_table :magazines do |t|
      t.string :title
      t.float :price
      t.string :category
      t.text :description

      t.timestamps
    end
    add_index :magazines, :title, unique: true
  end
end
