class AddColumnToUniversities < ActiveRecord::Migration[5.0]
  def change
    add_column :universities, :tuition_fee, :float
  end
end
