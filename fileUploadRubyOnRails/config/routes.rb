Rails.application.routes.draw do
#  get 'resumes/index'

#  get 'resumes/new'

#  get 'resumes/create'

#  get 'resumes/destroy'

  resources :resumes, only: [:index, :new, :create, :destroy]
  root "resumes#index"
end
