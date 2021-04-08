module SmallCap
  class SmallCapController < ::ApplicationController
    requires_plugin SmallCap

    before_action :ensure_logged_in

    def index
    end
  end
end
