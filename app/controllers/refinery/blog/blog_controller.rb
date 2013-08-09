module Refinery
  module Blog
    class BlogController < ::ApplicationController

      include ControllerHelper

      helper :'refinery/blog/posts'

    end
  end
end
