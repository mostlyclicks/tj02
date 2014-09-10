module Refinery
  module Surveys
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Surveys

      engine_name :refinery_surveys

      initializer "register refinerycms_surveys plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "surveys"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.surveys_admin_surveys_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/surveys/survey',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Surveys)
      end
    end
  end
end
