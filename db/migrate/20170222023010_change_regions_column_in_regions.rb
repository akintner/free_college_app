class ChangeRegionsColumnInRegions < ActiveRecord::Migration[5.0]
  def change
    rename_column :regions, :regions, :region
  end
end
