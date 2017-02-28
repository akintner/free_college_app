class AddCityToUniversities < ActiveRecord::Migration[5.0]
  def change
    add_column :universities, :city, :string
  end
end
