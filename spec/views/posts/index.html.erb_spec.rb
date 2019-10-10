require 'rails_helper'

RSpec.describe "posts/index.html.erb", type: :view do
  it "displays all the index", views: true do
    assign(:posts, [
      Post.create!(:content => "content1"),
      Post.create!(:content => "content2")
    ])
    render
    expect(rendered).to match /content1/
    expect(rendered).to match /content2/
  end
end
