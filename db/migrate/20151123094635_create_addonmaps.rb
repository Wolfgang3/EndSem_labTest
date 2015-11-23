class CreateAddonmaps < ActiveRecord::Migration
  def change
    create_table :addonmaps do |t|
      t.integer :latitude
      t.integer :longitude
      t.string :name

      t.timestamps null: false
    end
  end
end
