Rails.application.routes.draw do
  resources :students
  resources :photos
  resources :albums
  resources :fortunes

  root 'homepages#home'

  resources :homepages do
  end

  resources :students do
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
