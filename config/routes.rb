Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # see all
  get 'tasks', to: 'tasks#index', as: :tasks

  #receive the form submission
  post 'tasks', to: 'tasks#create',
  #see new task
  get 'task/new', to: 'tasks#new', as: :new_task
  #see one
  get 'tasks/:id', to: 'tasks#show', as: :task

end
