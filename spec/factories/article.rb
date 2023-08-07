FactoryBot.define do
  factory :article do
    title { 'New Article' }
    body { 'Test article body.' }
    status { 'public' }
  end
end
