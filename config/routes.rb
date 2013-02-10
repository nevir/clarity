Clarity::Application.routes.draw do
  root to: "home#home"

  # Omniauth expects a 404ing endpoint; we set up a quick one for a named route
  # http://stackoverflow.com/a/12117618/422263
  match 'auth/:provider', to: proc { [404, {}, [""]] }, as: :authorize
  # Handle the flip side
  match 'auth/:provider/callback', to: 'sessions#create'
end
