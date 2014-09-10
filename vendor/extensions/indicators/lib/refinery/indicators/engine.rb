module Refinery
  module Indicators
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Indicators

      engine_name :refinery_indicators

      initializer "register refinerycms_indicators plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "indicators"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.indicators_admin_indicators_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/indicators/indicator',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Indicators)
      end
    end
  end
end
