class SmallCapConstraint
  def matches?(request)
    SiteSetting.small_caps_enabled
  end
end
