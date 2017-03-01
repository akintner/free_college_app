class AddWebsiteToUniversities < ActiveRecord::Migration[5.0]
  def change
    add_column :universities, :uni_website, :string
  end
end
