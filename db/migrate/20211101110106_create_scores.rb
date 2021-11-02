class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.integer :score_1h,null: false
      t.integer :score_2h,null: false
      t.integer :score_3h,null: false
      t.integer :score_4h,null: false
      t.integer :score_5h,null: false
      t.integer :score_6h,null: false
      t.integer :score_7h,null: false
      t.integer :score_8h,null: false
      t.integer :score_9h,null: false
      t.integer :score_10h,null: false
      t.integer :score_11h,null: false
      t.integer :score_12h,null: false
      t.integer :score_13h,null: false
      t.integer :score_14h,null: false
      t.integer :score_15h,null: false
      t.integer :score_16h,null: false
      t.integer :score_17h,null: false
      t.integer :score_18h,null: false
      t.string :course_name,null: false
      t.integer :total_score
      t.references :user,null: false,foreign_key: :true
      t.timestamps
    end
  end
end
