class Records < ActiveRecord::Migration[6.0]
  def change
    drop_table :golf_items
  end
end
