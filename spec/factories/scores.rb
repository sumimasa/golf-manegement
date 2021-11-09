FactoryBot.define do
  factory :score do
    score_1h {3}
    score_2h {4}
    score_3h {2}
    score_4h {4}
    score_5h {3}
    score_6h {4}
    score_7h {2}
    score_8h {4}
    score_9h {3}
    score_10h {4}
    score_11h {2}
    score_12h {4}
    score_13h {3}
    score_14h {4}
    score_15h {2}
    score_16h {4}
    score_17h {3}
    score_18h {4}
    total_score{59}
    course_name{"熊本空港カントリークラブ"}
    play_date{'2021-02-20'}
    memo {"test"}
    association :user

  end
end
