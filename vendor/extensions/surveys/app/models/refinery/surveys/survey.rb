module Refinery
  module Surveys
    class Survey < Refinery::Core::BaseModel
      self.table_name = 'refinery_surveys'

      attr_accessible :name, :description, :survey_link, :survey_end, :position

      validates :name, :presence => true, :uniqueness => true
    end
  end
end
