class AddCountryToUniversities < ActiveRecord::Migration[5.0]
  def change
    add_reference :universities, :country, foreign_key: true
  end
end
