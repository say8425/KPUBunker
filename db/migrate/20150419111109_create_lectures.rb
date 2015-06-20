class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :name, null: false
      t.float :grade, null: true

      t.belongs_to :major, index: true
      t.belongs_to :professor, index: true
      t.timestamps null: false
    end
  end
end
