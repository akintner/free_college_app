class Classes < ActiveRecord::Migration[5.0]
  def change
    create_table :classes do |t|
      t.string :name
      t.string :language
      t.timestamps null: false 
    end
  end
end
