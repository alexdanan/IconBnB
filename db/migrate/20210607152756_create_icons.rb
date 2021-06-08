class CreateIcons < ActiveRecord::Migration[6.0]
  def change
    create_table :icons do |t|
      t.string :name
      t.string :category
      t.text :description
      t.string :location
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
