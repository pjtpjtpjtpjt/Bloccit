class ChangeNameToIntegerForRatings < ActiveRecord::Migration
  def change
    change_column(:ratings, :name, :integer)
  end
end
