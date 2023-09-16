require 'spec_helper'



describe Article do
  describe 'validation' do
    it {should validate_presence_of :title}
    it {should validate_length_of(:title).is_at_most(140)}
    it {should validate_presence_of :text}
  end

  describe 'association' do
    it {should have_many :comments}
  end

  describe "#subject" do
    it "return article title" do
      article = create(:article, title: 'Lorem ipsum')
      expect(article.subject).to eq 'Lorem ipsum'
    end
  end

  describe '#last_comment' do
    it 'return last comment' do
      article = create(:article_with_comments)
      expect(article.last_comment.body).to eq 'comment body 3'
    end
  end
end