# frozen_string_literal: true

require 'rails_helper'

describe ArticlesController do
  let(:article1) { create(:article, title: 'Test Article #1', body: 'Body of Test Article #1') }
  let(:article2) { create(:article, title: 'Test Article #2', body: 'Body of Test Article #2') }

  describe '#index' do
    subject { get :index }
    let(:articles) { [article1, article2] }

    it 'returns a list of all Articles' do
      binding.pry
      expect(articles).to include(article1, article2)
    end
  end
end
