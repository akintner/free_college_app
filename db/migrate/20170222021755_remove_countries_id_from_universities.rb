class RemoveCountriesIdFromUniversities < ActiveRecord::Migration[5.0]
  def change
    remove_column :universities, :countries_id
  end
end
