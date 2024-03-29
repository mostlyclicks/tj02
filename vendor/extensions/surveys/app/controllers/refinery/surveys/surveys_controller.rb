module Refinery
  module Surveys
    class SurveysController < ::ApplicationController

      before_filter :find_all_surveys
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @survey in the line below:
        present(@page)
      end

      def show
        @survey = Survey.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @survey in the line below:
        present(@page)
      end

    protected

      def find_all_surveys
        @surveys = Survey.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/surveys").first
      end

    end
  end
end
