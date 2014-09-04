module Refinery
  module Graphs
    module Admin
      class GraphsController < ::Refinery::AdminController

        crudify :'refinery/graphs/graph',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
