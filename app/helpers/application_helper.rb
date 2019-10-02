module ApplicationHelper
  def color_name(color)
    t("profiles.#{color}")
  end
end
