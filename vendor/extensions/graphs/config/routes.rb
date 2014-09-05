Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :graphs do
    resources :graphs, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :graphs, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :graphs, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
