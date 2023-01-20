require 'rails_helper'

RSpec.describe Article, type: :model do
  describe '#validations' do
    let(:article) { build(:article) }

    # let :article = build(:article) #criado por articles.rb em factories/)
    # line 7 => article = FactoryBot.create(:article) be available

    it 'tests article object' do
      # article = Article.create(title:'sample article', content: 'this text area')
      #expect(article.title).to eq('MyString')
      expect(article).to be_valid # article.valid? == true
    end


    it 'has a valid title' do
      expect(article.title).to eq('MyString')
    end

    it 'has an invalid title' do
      article.title = ''
      expect(article).not_to be_valid
      expect(article.errors[:title]).to include("can't be blank")
    end
  end
end
