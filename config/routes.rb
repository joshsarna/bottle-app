RedBook::red_book
Rails.application.routes.draw do

  namespace :api do
    resources :bottles
  end
end
