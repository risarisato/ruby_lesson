Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  # ルーティングの設定 → 次はコントローラーの設定
  # localhost:3000/postがindexの最初ページ
  # localhost:3000/post/newが次のページ
  # localhost:3000/post/new/createが次のページ
  resources :posts, only:[:index, :new, :create]
end
