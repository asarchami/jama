class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.integer :current_pic
      t.integer :current_cover
      t.string :first_name
      t.string :last_name
      t.string :website
      t.string :phone
      t.string :country
      t.string :city
      t.text :address
      t.boolean :visible

      t.timestamps null: false
    end
  end
end
