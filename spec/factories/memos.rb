FactoryBot.define do
  factory :memo do
    title             { 'お米を買って帰る' }
    text              { '明日の帰りにお米を買って帰る。コシヒカリ20kgを1袋' }
    amount            { 3000 }
    category_id       { 3 }
    store_id          { 2 }
    genre_id          { 12 }
    when_id           { 6 }

    association :user

    after(:build) do |memo|
      memo.image.attach(io: File.open('public/images/test_image.jpeg'), filename: 'test_image.jpeg')
    end
  end
end
