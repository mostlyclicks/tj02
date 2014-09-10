class ApplicationController < ActionController::Base
  before_filter :load_graphs, :load_latest_graphs, :load_home_indicators
  protect_from_forgery


  protected

  def load_graphs
    @graphs = Refinery::Graphs::Graph.all
  end

  def load_latest_graphs
    @latest_graphs = Refinery::Graphs::Graph.limit(3)
  end

  def load_home_indicators
    home_indicators = Refinery::Indicators::Indicator.all
    @home_indicators = home_indicators.sample(6)
  end


end
