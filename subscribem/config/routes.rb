Subscribem::Engine.routes.draw do
    root "dashboard#index"
    get "/sign_up", :to => "accounts#index", :as => :sign_up
end
