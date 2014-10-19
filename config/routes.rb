Rails.application.routes.draw do

  devise_for :members, :controllers => { :omniauth_callbacks => "omniauth_callbacks", :registrations => "members/registrations", sessions: 'members/sessions' }

  root 'home#index'

  get 'new_mentor', to: 'members#new_mentor'

  resources :members, only: [:index, :new, :create] do
    resources :classified, only: [:create, :new]
  end

  resource :member, only: [] do
    resource :profile, only: [:new, :update]
    resources :skills, only: [:create, :new]
  end
end
