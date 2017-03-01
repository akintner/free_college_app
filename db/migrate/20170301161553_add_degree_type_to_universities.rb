class AddDegreeTypeToUniversities < ActiveRecord::Migration[5.0]
  def change
    add_column :universities, :degree_offered, :string
  end
end
