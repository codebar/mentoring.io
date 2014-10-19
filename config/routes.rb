Rails.application.routes.draw do

  devise_for :members, :controllers => { :omniauth_callbacks => "omniauth_callbacks", :registrations => "members/registrations", sessions: 'members/sessions' }

  root 'home#index'

  get 'new_mentor', to: 'members#new_mentor'

  resources :members, only: [:index, :new, :create]
  resources :dashboard, only: [:index]
  resources :mentors, only: [:index, :show]

  resource :member, only: [] do
    resource :profile, only: [:new, :update, :show, :edit]
    resources :skills, only: [:create, :new]
    resources :interests, only: [:create, :new]
  end

  resource :classified, only: [] do
    get :personal
  end

  resources :classifieds, only: [:index, :create, :new, :update, :edit] do
    post :confirm, as: 'confirm'
    get :preview, as: 'preview'
    resources :messages
  end

  resources :messages, only: [:new, :index, :destroy, :show] do
    get :reply, as: :reply
    post :create_message, as: :create_message
  end

  resource :verification
end
