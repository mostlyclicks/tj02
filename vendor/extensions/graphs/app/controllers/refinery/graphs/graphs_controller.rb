module Refinery
  module Graphs
    class GraphsController < ::ApplicationController

      before_filter :find_all_graphs
      before_filter :find_graph

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @project in the line below:
        present(@page)
        @graphs = Refinery::Graphs::Graph.all
        
      end

      def show
        @graph = Graph.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @project in the line below:
        present(@page)
      end

    protected

      def find_all_graphs
        @graphs = Graph.order('position ASC')
      end

      def find_graph
        @page = ::Refinery::Page.where(:link_url => "/graphs").first
      end

    end
  end
end
