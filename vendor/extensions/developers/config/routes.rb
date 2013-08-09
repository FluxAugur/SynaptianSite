Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :developers do
    resources :developers, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :developers, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :developers, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
