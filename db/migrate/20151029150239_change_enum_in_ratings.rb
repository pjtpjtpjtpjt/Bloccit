class ChangeEnumInRatings < ActiveRecord::Migration
  def change
    remove_column :ratings, :name
    add_column :ratings, :name, :integer
  end
end
