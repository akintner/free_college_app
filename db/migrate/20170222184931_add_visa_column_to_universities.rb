class AddVisaColumnToUniversities < ActiveRecord::Migration[5.0]
  def change
    add_column :universities, :visa, :boolean
  end
end
