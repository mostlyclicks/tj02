Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :indicators do
    resources :indicators, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :indicators, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :indicators, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
