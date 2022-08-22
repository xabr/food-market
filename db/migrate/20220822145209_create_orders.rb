class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :offer, null: false, foreign_key: true
      t.boolean :confirmed
      t.boolean :canceled

      t.timestamps
    end
  end
end
