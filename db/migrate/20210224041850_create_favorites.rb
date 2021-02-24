class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.integer :member_id
      t.integer :product_id

      t.timestamps
    end
    add_index :favorites, [:member_id, :product_id], unique: :true
  end
end
