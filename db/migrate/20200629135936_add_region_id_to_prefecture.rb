class AddRegionIdToPrefecture < ActiveRecord::Migration[5.2]
  def change
    add_column :prefectures, :region_id, :integer
  end
end
