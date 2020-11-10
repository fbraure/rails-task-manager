Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # # UPDATE
  # get "tasks/:id/edit", to: "tasks#edit", as: "edit_tasks"
  # patch "tasks/:id", to: "tasks#update", as: "update_tasks"
  # # CREATE
  # get "tasks/new", to: "tasks#new", as: "new_tasks"
  # post "tasks", to: "tasks#create"
  # # READ
  #   # all
  # get "tasks", to: "tasks#index"
  # # find
  # get "tasks/:id", to: "tasks#show", as: "show_tasks"
  # # DELETE
  # delete "tasks/:id", to: "tasks#destroy", as: "delete_tasks"
  resources :tasks#, only: [:show]
end
