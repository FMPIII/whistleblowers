class AddDisappearsToReview < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :disappears, :boolean
  end
end
