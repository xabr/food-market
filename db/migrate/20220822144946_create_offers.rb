class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.string :meal_name
      t.float :price
      t.integer :portions
      t.date :available_at
      t.string :meal_description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
