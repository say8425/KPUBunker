class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.string :name, null: false

      t.timestamps null: false
    end
  end
end
