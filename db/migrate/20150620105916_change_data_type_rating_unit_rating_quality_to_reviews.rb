class ChangeDataTypeRatingUnitRatingQualityToReviews < ActiveRecord::Migration
  def change
    change_column :reviews, :rating_unit, :float
    change_column :reviews, :rating_quality, :float
  end
end
