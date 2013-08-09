module Refinery
  module Developers
    class DevelopersController < ::ApplicationController

      before_filter :find_all_developers
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @developer in the line below:
        present(@page)
      end

      def show
        @developer = Developer.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @developer in the line below:
        present(@page)
      end

    protected

      def find_all_developers
        @developers = Developer.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/developers").first
      end

    end
  end
end
