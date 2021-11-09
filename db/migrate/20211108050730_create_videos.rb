class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.text :title ,null: false
      t.string :youtube_url ,null: false
      t.references :user ,null: false, foreign_key: true
      t.timestamps
    end
  end
end
