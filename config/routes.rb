Rails.application.routes.draw do
  devise_for :users
  resources  :posts
  root to: 'pages#home'


  match "/404", to: "errors#not_found", via: :all
  match "/422", to: "errors#unacceptable", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
  get '/sitemap.xml' => 'sitemaps#index', defaults: { format: 'xml' }
  get "/robots.:format", to: "pages#robots"
  constraints(host: /^(?!www\.)/i) do
  get '(*any)' => redirect { |params, request|
    URI.parse(request.url).tap { |uri| uri.host = "www.#{uri.host}" }.to_s
  }
    end
  #match "/old_path_to_posts/:id", to: redirect("/posts/%{id}s")
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
