# PostsControllerは、ApplicationControllerを継承している
class PostsController < ApplicationController
    def index
        # DBからすべてを取得する
        # rubyのインスタンス変数「@」=「this」と同じ意味合い
        # @postsはview=app\views\posts\index.html.erbをそのまま変数として使っている
        # Post.all = app\models\post.rbはデータベースからすべてのアクセスOKして
        @posts = Post.all
    end

    def new
        @Posts = Post.new
    end
end
