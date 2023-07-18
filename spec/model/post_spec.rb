require 'rails_helper'

RSpec.describe Post, type: :model do
    it "Post with invalid parameters" do
        post = Post.new(title: "jutt", content: nil, published: "true")
        expect(post).to_not be_valid
    end

    it "Post with valid parameters" do
        post = Post.new(title: "jutt", content: 'asad', published: "true")
        expect(post).to be_valid
    end 
end
