class Score < ApplicationRecord
  belongs_to :user
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :count

  with_options presence: true,numericality: {other_than:0,message:"打数を選択してください"} do
    validates :score_1h
    validates :score_2h
    validates :score_3h
    validates :score_4h
    validates :score_5h
    validates :score_6h
    validates :score_7h
    validates :score_8h
    validates :score_9h
    validates :score_10h
    validates :score_11h
    validates :score_12h
    validates :score_13h
    validates :score_14h
    validates :score_15h
    validates :score_16h
    validates :score_17h
    validates :score_18h
  end
  validates :course_name,presence: true
end
