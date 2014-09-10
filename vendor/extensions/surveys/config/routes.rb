Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :surveys do
    resources :surveys, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :surveys, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :surveys, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
