FactoryBot.define do
  factory :comment do
    commenter { 'Bob Commenter' }
    body { 'Test comment #1.' }
    status { 'public' }
  end
end
