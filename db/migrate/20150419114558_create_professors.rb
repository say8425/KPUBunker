class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.string :name, null: false

      t.belongs_to :major, index: true
      t.belongs_to :lecture, index: true
      t.timestamps null: false
    end
  end
end
