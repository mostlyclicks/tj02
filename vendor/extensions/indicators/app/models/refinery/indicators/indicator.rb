module Refinery
  module Indicators
    class Indicator < Refinery::Core::BaseModel
      self.table_name = 'refinery_indicators'

      attr_accessible :name, :subject, :source, :iframe_url, :csv_url, :description, :city_tags, :zip_tags, :state_tags, :meta_tags, :position

      validates :name, :presence => true, :uniqueness => true
    end
  end
end
