module AccountsHelper
  def rank_enum_name enum_value
    I18n.t("rank.#{enum_value}")
  end
end
