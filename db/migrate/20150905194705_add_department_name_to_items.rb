class AddDepartmentNameToItems < ActiveRecord::Migration
  def change
  	add_column :items, :department_name, :string
  end
end
