class CreateWeapons < ActiveRecord::Migration[7.0]
  def change
    create_table :weapons do |t|
      t.string :name
      t.string :details
      t.string :origin_country
      t.string :era_of_use
      t.string :characteristics
      t.string :category
      t.string :weapon_type
      t.float :price
      t.integer :efficiency_rate
      t.references :owner, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
