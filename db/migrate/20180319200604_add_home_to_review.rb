class AddHomeToReview < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :home, :boolean
  end
end
