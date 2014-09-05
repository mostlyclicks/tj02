class ApplicationController < ActionController::Base
  before_filter :load_graphs
  protect_from_forgery


  protected

  def load_graphs
    @graphs = Refinery::Graphs::Graph.all
  end


end
