class CreateHitmen < ActiveRecord::Migration[7.0]
  def change
    create_table :hitmen do |t|
      t.string :name
      t.float :price
      t.text :description
      t.integer :rating
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
