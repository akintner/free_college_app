class Regions < ActiveRecord::Migration[5.0]
  def change
    create_table :regions do |t|
      t.string :regions
      t.timestamps null: false
    end
  end
end
