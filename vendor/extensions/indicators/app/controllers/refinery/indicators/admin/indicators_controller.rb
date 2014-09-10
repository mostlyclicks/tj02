module Refinery
  module Indicators
    module Admin
      class IndicatorsController < ::Refinery::AdminController

        crudify :'refinery/indicators/indicator',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
