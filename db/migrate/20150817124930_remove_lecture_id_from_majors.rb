class RemoveLectureIdFromMajors < ActiveRecord::Migration
  def change
    remove_belongs_to :majors, :lecture
  end
end
