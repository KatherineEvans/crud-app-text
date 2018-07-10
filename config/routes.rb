Rails.application.routes.draw do
  get "/comics" => "comic_books#index"
  post "/comics" => "comic_books#create"
  get "/comics/:id" => "comic_books#show"
  patch "/comics/:id" => "comic_books#update"
  delete "/comics/:id" => "comic_books#destroy"

end
