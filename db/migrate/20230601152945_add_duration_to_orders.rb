class AddDurationToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :duration, :integer
  end
end
