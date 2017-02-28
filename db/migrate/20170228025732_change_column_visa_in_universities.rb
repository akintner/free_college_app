class ChangeColumnVisaInUniversities < ActiveRecord::Migration[5.0]
  def change
    change_column :universities, :visa, :string
  end
end
