require 'spec_helper'



describe Article do
  describe 'validation' do
    it {should validate_presence_of :title}
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
end