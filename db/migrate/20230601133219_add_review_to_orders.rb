class AddReviewToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :review, :text
  end
end
