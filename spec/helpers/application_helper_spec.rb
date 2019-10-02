require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  it "get profile value mus return localized val" do
    expect(helper.get_profile_value('red')).to eq("красный")
  end

  it "add space" do
    expect(helper.int_space('100000')).to eq("100 000")
  end


  describe "check plural" do
    it "with count equal 1" do
      expect(helper.plural(1, 'master')).to eq("1 мастер")
    end

    it "with count equal 2" do
      expect(helper.plural(2, 'master')).to eq("2 мастера")
    end

    it "with count equal 10" do
      expect(helper.plural(10, 'master')).to eq("10 мастеров")
    end
  end
end
