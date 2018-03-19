class AddScoreToReferee < ActiveRecord::Migration[5.1]
  def change
    add_column :referees, :score, :float
  end
end
