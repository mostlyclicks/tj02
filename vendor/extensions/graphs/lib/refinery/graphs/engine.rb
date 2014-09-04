module Refinery
  module Graphs
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Graphs

      engine_name :refinery_graphs

      initializer "register refinerycms_graphs plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "graphs"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.graphs_admin_graphs_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/graphs/graph',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Graphs)
      end
    end
  end
end
