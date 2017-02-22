class AddColumnsToUniversities < ActiveRecord::Migration[5.0]
  def change
    add_column :universities, :application_fee, :float
  end
end
