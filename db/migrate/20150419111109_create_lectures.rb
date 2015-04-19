class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :name, null: false
      t.integer :grade, null: false

      t.timestamps null: false
    end
  end
end
