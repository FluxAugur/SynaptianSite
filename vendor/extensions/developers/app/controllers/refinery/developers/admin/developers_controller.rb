module Refinery
  module Developers
    module Admin
      class DevelopersController < ::Refinery::AdminController

        crudify :'refinery/developers/developer',
                :title_attribute => 'name', :xhr_paging => true

      end
    end
  end
end
