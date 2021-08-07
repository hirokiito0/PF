Rails.application.routes.draw do
  namespace :customer do
    get 'customers/show'
    get 'customers/edit'
  end
  namespace :admin do
    get 'customers/index'
    get 'customers/show'
  end
  devise_for :customers, controllers: {
    sessions:      'customers/sessions',
    passwords:     'customers/passwords',
    registrations: 'customers/registrations'
  }

  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }

  root "customer/homes#top"

  namespace :admin do
    resources :games
  end

  namespace :customer do
    resources :games
  end

end
