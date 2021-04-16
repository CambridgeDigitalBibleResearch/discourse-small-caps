module SmallCaps
  class Engine < ::Rails::Engine
    engine_name "SmallCaps".freeze
    isolate_namespace SmallCaps

    config.after_initialize do
      Discourse::Application.routes.append do
        mount ::SmallCaps::Engine, at: "/small-caps"
      end
    end
  end
end
