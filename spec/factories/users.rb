FactoryBot.define do
  factory :user do
    nick_name              { 'メモ太郎' }
    email                 { 'memo@memo' }
    password              { 'abc123' }
    password_confirmation { 'abc123' }
  end
end
