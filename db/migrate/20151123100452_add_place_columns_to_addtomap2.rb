class AddPlaceColumnsToAddtomap2 < ActiveRecord::Migration
  def change
  	 add_column :addonmaps, :city_name, :string
  end
end
