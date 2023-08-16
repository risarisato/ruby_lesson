# PostsControllerは、ApplicationControllerを継承している
class PostsController < ApplicationController
    def index
        # DBからすべてを取得する
        # rubyのインスタンス変数「@」=「this」と同じ意味合い
        # @postsはview=app\views\posts\index.html.erbをそのまま変数として使っている
        # Post.all = app\models\post.rbはデータベースからすべてのアクセスOKして
        @posts = Post.all
    end

    def new #new「投稿」を押すとcreateメソッドが呼ばれる
        #@Post = Post.new 大文字と小文字のミス
        @post = Post.new
    end

    # 新しい投稿する挙動
    def create # titleとcontentの入力情報(post_params)になる
        @post = Post.new(post_params)
    
        # データベースに保存された場合は、postページに移動する
        #if @Post.save 大文字と小文字のミス
        if @post.save
            redirect_to posts_path # config\routes.rbの「resources :posts」から生成される
        else
            render :new # セーブされなかったらnewページに移動する
        end
    end

    
    private # このprivateにするとposts_controllerでしか「post_params」呼び出せなくなる
    # 入力情報のpost_paramsを定義する
    def post_params
        # postモデルのタイトルとコンテント情報を許可する
        #params.requier(:post).permit(:title, :content) スペルミス
        params.require(:post).permit(:title, :content)
    end
end
