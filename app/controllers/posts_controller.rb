# PostsControllerは、ApplicationControllerを継承している
class PostsController < ApplicationController
    def index
        # DBからすべてを取得する
        # rubyのインスタンス変数「@」=「this」と同じ意味合い
        @posts = Post.all
    end
end
