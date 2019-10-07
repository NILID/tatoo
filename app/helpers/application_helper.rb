module ApplicationHelper
  def get_profile_value(val)
    t("profiles.#{val}")
  end

  def plural_with_count(count, value)
    count.to_s + ' ' + plural(count, value)
  end

  def plural(count, value, locale = I18n.locale)
    variants = [1, 2, 10].map { |int| t("plural.#{value}_#{int}", locale: locale)}
    Russian.p(count, *variants)
  end

  def check_price_params(params, price)
    (params && params[:price_between].present?) && params[:price_between] == "#{price[0]}..#{price[1]}"
  end

  def int_space(int)
    number_with_delimiter(int, delimiter: ' ')
  end
end
