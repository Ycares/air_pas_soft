class AddOrderTable < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.text :comment
      t.references :user, null: false, foreign_key: true
      t.references :weapon, null: false, foreign_key: true

      t.timestamps
    end
  end
end