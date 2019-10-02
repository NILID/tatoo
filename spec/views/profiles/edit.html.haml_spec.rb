require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  before(:each) do
    @profile = create(:profile)
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

      assert_select "input[name=?]", "profile[price]"

      assert_select "input[name=?]", "profile[color]"

      assert_select "input[name=?]", "profile[work_type]"

      assert_select "input[name=?]", "profile[user_id]"
    end
  end
end
