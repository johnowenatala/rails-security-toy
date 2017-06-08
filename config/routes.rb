Rails.application.routes.draw do

  root to: 'secure_files#index'

  resources :secure_files, only: [:index, :new, :create] do
  end
  get 'download/*full_filename', to: 'secure_files#download', as: 'download_file', format: false

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
