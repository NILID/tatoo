module ApplicationHelper
  def get_profile_value(val)
    t("profiles.#{val}")
  end

  def plural(count, value, locale = I18n.locale)
    val = "plural.#{value}"
    count.to_s + ' ' + Russian.p(count, t("#{val}_1", locale: locale), t("#{val}_2", locale: locale), t("#{val}_10", locale: locale))
  end
end
