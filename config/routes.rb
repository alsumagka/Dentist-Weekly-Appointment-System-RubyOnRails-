Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "user#main"
  get "/main", to: "user#main", as: "main"
  post "/main/log", to: "user#login", as: "login"
  match "/logout", to: "user#logout", via: [:get, :delete], as: "logout"

  get "/userdash/:id", to: "user#dash", as: "userdash"
  get "/userappoint1/:id", to: "user#appoint"
  get "/userappoint2/:id", to: "user#appointt"

  get "/user/adrianappoint/:user/:mandras", to: "user#set"
  post "/user/adrianappointna", to: "user#setna"

  get "/user/kimappoint/:user/:domingo", to: "user#sett"
  post "/user/kimappointna", to: "user#settna"

  get "/user/mandras/:id", to: "user#mappoint"
  get "/user/domingo/:id", to: "user#kappoint"

  get "/user", to: "user#new"
  post "/user/create", to: "user#create"



  get "/admin/log", to: "admin#log", as: "adlog"
  post "/admin/login", to: "admin#login"
  match "/adminlogout", to: "admin#logout", via: [:get, :delete], as: "adminlogout"

  get "/admin/dash/:id", to: "admin#dash", as: "admindash"
  get "/admin/sched/:id", to: "admin#sched", as: "admin_sched"
  post "/admin/schedule/:id", to: "admin#set"

  get "/admin/naghulat/:id", to: "admin#naghulat", as:"naghulat"
  get "/admin/approve/:id/:admin", to: "admin#approve"
  get "/admin/decline/:id/:admin", to: "admin#decline"
end
