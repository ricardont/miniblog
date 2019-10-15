require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :user_id => 1,
      :content => "MyText",
      :media => "MyText",
      :recipient_id => 1
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "input[name=?]", "post[user_id]"

      assert_select "textarea[name=?]", "post[content]"

      assert_select "textarea[name=?]", "post[media]"

      assert_select "input[name=?]", "post[recipient_id]"
    end
  end
end
