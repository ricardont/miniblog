require 'rails_helper'

RSpec.describe "posts/show.html.erb", type: :view do
  it "displays generic message", slow: true do
  	assign(:post, double(:content => "Post Show view"))
  	render
  	expect(rendered).to match("Post Show view")
  end
end