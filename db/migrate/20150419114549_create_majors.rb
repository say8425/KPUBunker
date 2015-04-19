class CreateMajors < ActiveRecord::Migration
  def change
    create_table :majors do |t|
      t.string  :name, null: false

      t.timestamps null: false
    end
  end
end
