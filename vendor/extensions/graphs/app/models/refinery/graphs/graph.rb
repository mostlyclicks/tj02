module Refinery
  module Graphs
    class Graph < Refinery::Core::BaseModel
      self.table_name = 'refinery_graphs'

      attr_accessible :name, :excerpt, :description, :code, :position

      validates :name, :presence => true, :uniqueness => true
    end
  end
end
