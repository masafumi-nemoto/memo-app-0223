Rails.application.routes.draw do
    root to:"memos#index"
    get "/new", to: "memos#new"
    post "/create", to: "memos#create"
    delete "/memos/:id", to: "memos#destroy"
    get "/memos/:id/edit", to: "memos#edit"
    patch "/memos/:id", to: "memos#update"
    get "/categories/:id", to: "categories#show"
    $date = Time.now.in_time_zone('Tokyo').to_s
    root "articles#index"
    resources :articles, only: :index
end
