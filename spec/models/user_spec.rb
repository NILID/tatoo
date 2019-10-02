require 'rails_helper'

describe User do
  let(:user) { build(:user) }

  context 'should' do

    it 'have not username less 3' do
      user.username = 'ma'
      expect(user.valid?).to be false
      expect(user.errors[:username]).not_to be_empty
    end

    it 'have not username more 101' do
      user.username = 'm' * 101
      expect(user.valid?).to be false
      expect(user.errors[:username]).not_to be_empty
    end

    it 'have username' do
      user.username = nil
      expect(user.valid?).to be false
      expect(user.errors[:username]).not_to be_empty
    end

    it 'have not unique username' do
      user.save!
      new_user = build(:user)
      new_user.username = user.username
      expect(new_user.valid?).to be false
      expect(new_user.errors[:username]).not_to be_empty
    end

    it 'have not username with specific symbols' do
      ['log,in', 'very-big', '<hello>'].each do |username|
        user.username = username
        expect(user.valid?).to be false
        expect(user.errors[:username]).not_to be_empty
      end
    end

    it 'have not username from blacklist' do
      LOGIN_BLACKLIST.each do |username|
        user.username = username
        expect(user.valid?).to be false
        expect(user.errors[:username]).not_to be_empty
      end
    end

    it 'have profile after create' do
      user.save!
      expect(user.profile).not_to be_nil
      expect(user.profile.valid?).to be true
    end
  end
end
