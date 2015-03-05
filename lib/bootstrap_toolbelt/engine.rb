module BootstrapToolbelt
  class Engine < ::Rails::Engine
    config.autoload_paths += Dir["#{config.root}/app/controllers/concerns/**"]
  end
end
