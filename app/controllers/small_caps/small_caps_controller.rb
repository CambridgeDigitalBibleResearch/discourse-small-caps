module SmallCaps
  class SmallCapsController < ::ApplicationController
    requires_plugin SmallCaps

    before_action :ensure_logged_in

    def index
    end
  end
end
