module Refinery
  module Surveys
    module Admin
      class SurveysController < ::Refinery::AdminController

        crudify :'refinery/surveys/survey',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
