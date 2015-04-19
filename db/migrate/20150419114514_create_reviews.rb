class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating_unit
      t.integer :rating_quality
      t.text    :content

      t.timestamps null: false
    end
  end
end
