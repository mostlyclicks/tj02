module Refinery
  module Indicators
    class IndicatorsController < ::ApplicationController

      before_filter :find_all_indicators
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @indicator in the line below:
        present(@page)
      end

      def show
        @indicator = Indicator.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @indicator in the line below:
        present(@page)
      end

    protected

      def find_all_indicators
        @indicators = Indicator.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/indicators").first
      end

    end
  end
end
