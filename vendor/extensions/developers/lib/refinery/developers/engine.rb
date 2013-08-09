module Refinery
  module Developers
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Developers

      engine_name :refinery_developers

      initializer "register refinerycms_developers plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "developers"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.developers_admin_developers_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/developers/developer',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Developers)
      end
    end
  end
end
