class ChangeCourseTableName < ActiveRecord::Migration[5.0]
  def change
    rename_table :classes, :courses
  end
end
