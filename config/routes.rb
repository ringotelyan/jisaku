Rails.application.routes.draw do

  devise_for :admins, controllers: {
    registrations: "admin/sessions"
  }

  devise_for :users, controllers: {
    registrationsions: "public/registrations",
    sessions: 'public/sessions'
  }

  namespace :public do
    get '/' => "homes#top"
    get '/about' => 'homes#about'
  end
end
