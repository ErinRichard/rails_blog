# frozen_string_literal: true

require 'rails_helper'

describe CommentsController do
  let(:article1) { create(:article, title: 'Test Article #1', body: 'Body of Test Article #1') }
  let(:article2) { create(:article, title: 'Test Article #2', body: 'Body of Test Article #2') }

  let(:comment1) { create(:comment, body: 'Body of test comment #1', article_id: article1.id) }
  let(:comment2) { create(:comment, body: 'Body of test comment #2', article_id: article1.id) }
  let(:comment3) { create(:comment, body: 'Body of test comment #3', article_id: article2.id) }

  describe '.create' do
    # context 'when the Comment includes all required parts' do
      
      it 'creates a single Comment associated to a single Article' do
        binding.pry
        expect(article1.comments).to include(comment1, comment2)
        # expect(comment1.article_id).to eq(article1.id)
        # expect(article2.comments).not_to include(comment3)

        expect(article2.comments).to include(comment3)
        # expect(article2.comments).not_to include(comment1, comment2)
      end
    # end

    # context 'when the Comment does not include all required parts' do
    #   let(:comment4) { create(:comment, body: nil, commenter: nil, article: article2)}
      
    #   it 'the Comment does not get created' do
    #     binding.pry
    #     expect(article2).to include(comment3, comment4) 
    #   end
    # end
  end
end
