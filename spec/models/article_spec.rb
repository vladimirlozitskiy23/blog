require 'spec_helper'

describe Article do
  describe 'validation' do
    it {should validate_presence_of :title}
    it {should validate_presence_of :text}
  end

  describe 'association' do
    it {should have_many :comments}
  end
end