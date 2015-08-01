class AddKeys < ActiveRecord::Migration
  def change
    add_foreign_key "professors", "majors", name: "professors_major_id_fk"
    add_foreign_key "reviews", "lectures", name: "reviews_lecture_id_fk"
  end
end
