class AddCourseToProducts < ActiveRecord::Migration
  def change
    add_column :products, :course, :boolean
  end
end
