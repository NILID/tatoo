require 'rails_helper'

RSpec.describe "profiles/show", type: :view do
  before(:each) do
    @profile = create(:profile)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Color/)
    expect(rendered).to match(/Work Type/)
    expect(rendered).to match(//)
  end
end
