module ControllerMacros

  # default user role for empty params
  # see all traits in user factory

  def login_user(user)
    user = (user == :user) ? nil : user
    before(:each) do
      @user = user.nil? ? create(:user) : create(:user, user)

      sign_in(@user)
    end
  end
end