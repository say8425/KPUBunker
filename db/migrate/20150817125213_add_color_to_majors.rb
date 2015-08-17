class AddColorToMajors < ActiveRecord::Migration
  def change
    add_column :majors, :color, :string
  end
end
