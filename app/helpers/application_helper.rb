module ApplicationHelper
  def get_profile_value(val)
    t("profiles.#{val}")
  end
end
