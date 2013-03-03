ProtegeLms::Application.routes.draw do

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root to: 'pages#welcome'
  get "/about" => 'pages#about', as: 'about'

  devise_for :users

  resources :users, only: [:show, :edit, :update]

  resources :series do
    resources :courses
  end

  resources :courses do
    resources :lessons
  end

  resources :lessons do
    resources :quizzes
  end

  resources :quizzes do
    resources :questions
  end

  resources :questions do
    resources :answers
    resources :tips
  end

  resources :organizations, except: [:index]

  # a series can be created independently of any other objects
  # the rest of the objects cannot (must use create paths above)
  resources :series
  resources :courses, :lessons, :quizzes, :questions, :answers, :tips, except: :new


  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
