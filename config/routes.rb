Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'registrations'} do 
    get ':user/edit-profile' => 'devise/registration#edit', :as => :edit_user_profile
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index , :show, :destroy, :edit, :update] do 
    member do 
      post :delete_user
    end
  end
  resources :documents, only: [:create, :destroy]
  resources :articles
  root "homes#index"
end
