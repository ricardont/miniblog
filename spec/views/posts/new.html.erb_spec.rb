require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  before(:each) do
    assign(:post, Post.new(
      :user_id => 1,
      :content => "MyText",
      :media => "MyText",
      :recipient_id => 1
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do

      assert_select "input[name=?]", "post[user_id]"

      assert_select "textarea[name=?]", "post[content]"

      assert_select "textarea[name=?]", "post[media]"

      assert_select "input[name=?]", "post[recipient_id]"
    end
  end
end
