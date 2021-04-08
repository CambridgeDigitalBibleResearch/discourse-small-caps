module SmallCap
  class Engine < ::Rails::Engine
    engine_name "SmallCap".freeze
    isolate_namespace SmallCap

    config.after_initialize do
      Discourse::Application.routes.append do
        mount ::SmallCap::Engine, at: "/small-caps"
      end
    end
  end
end
