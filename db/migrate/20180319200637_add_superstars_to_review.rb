class AddSuperstarsToReview < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :superstars, :boolean
  end
end
