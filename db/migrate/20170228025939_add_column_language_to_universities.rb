class AddColumnLanguageToUniversities < ActiveRecord::Migration[5.0]
  def change
    add_column :universities, :language, :string
  end
end
