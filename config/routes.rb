Rails.application.routes.draw do
  resources :fortunes

  root 'homepages#home'

  resources :homepages do
    get 'home'
  end

  resources :student do
    resources :courses
  end

  resources :albums do
    resources :photos do
      collection do
        get 'search'
      end

      member do
        get 'preview'
      end
    end
  end
end
