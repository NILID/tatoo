require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  it "with count equal 1" do
    expect(helper.color_name('red')).to eq("красный")
  end
end
