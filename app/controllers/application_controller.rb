class ApplicationController < ActionController::Base
  before_filter :load_graphs, :load_latest_graphs
  protect_from_forgery


  protected

  def load_graphs
    @graphs = Refinery::Graphs::Graph.all
  end

  def load_latest_graphs
    @latest_graphs = Refinery::Graphs::Graph.limit(3)
  end


end
