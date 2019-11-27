Rails.application.routes.draw do
  resources :powers, only: [:index, :show]
  resources :heroines, only: [:index, :show, :new, :create]
end

# The form should also allow each heroine to be created with only one of the existing powers.
  #when i didn't create the collection_select I couldn't create my heroine. It would give me a status code of 304 and send me to index page.
  #is it because i didn't fill out the power_id for the heroine_params??????