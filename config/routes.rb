Rails.application.routes.draw do

  root 'videos#index'
  # resources :submit
  # match 'videos/bookmarklet?=title=:title&?url=:url', to: 'videos', action: 'create', via: [:get, :post]
  # match '/videos/submit?url=:url&title=:title', to: 'video', action: 'create', via: [:get, :post]
  post 'videos/submit' => 'bookmarklets#create'
  resources :videos, except: [:show]
end

# curl http://localhost:3000/videos/submit?url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DGDfAIGxOSTw&title=Aryattack%20on%20Titan
# curl --data 'url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DGDfAIGxOSTw&title=Aryattack%20on%20Titan' localhost:3000/videos/submit?
