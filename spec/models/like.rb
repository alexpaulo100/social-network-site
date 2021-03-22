require 'rails_helper'

RSpec.describe Like, type: :model do
  it "user likes a post" do

    andrew = FactoryBot.create(:user)
    jorg = FactoryBot.create(:user)
    matt = FactoryBot.create(:user)
    

    post = FactoryBot.create(:post, user: andrew)

    Like.create(user: jorg, post: post)

    expect(post.likes.count).to eql 1
    expect(post.likes.first.user).to eql jorg



  end
 

end

