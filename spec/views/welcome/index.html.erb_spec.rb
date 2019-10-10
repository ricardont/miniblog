require 'rails_helper'

RSpec.describe "welcome/index.html.erb", type: :view do
  it "displays main screen header", views: true do
  	render 
  	expect(rendered).to match("MiniBlog")
  end
end
