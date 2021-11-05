class AddPlayDateToScores < ActiveRecord::Migration[6.0]
  def change
    add_column :scores, :play_date, :date
  end
end
