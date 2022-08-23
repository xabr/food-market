class AddColumnsToOffer < ActiveRecord::Migration[7.0]
  def change
    add_column :offers, :img_url, :string
  end
end
