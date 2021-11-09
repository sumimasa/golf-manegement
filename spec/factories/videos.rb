FactoryBot.define do
  factory :video do
    title{"testtext"}
    youtube_url{"https://youtu.be/bQHIOcx713s"}
    association :user
  end
end
