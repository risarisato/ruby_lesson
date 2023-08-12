## README
掲示板アプリを作りながら学ぶRuby_on_Rails入門

## 環境構築
- rubyのインストール
- sqliteのインストール
- rubyのbinファイルにsqliteを解凍して入れておく

## コマンド確認
- ruby -v
- sqlite --version
- gem -v
- gem install bunndler
- gem install rails
- rails -v
- rails new XXXXX :新しいプロジェクト作成→フォルダごと作成される
- rails server サーバ起動
- git cloneの場合は、「rails server」だと「bundle install」 がないとエラーする

## コマンド2
- rails generate controller XXXX   手打ちでも可能だがコマンドでコントローラーを継承して作成できる
- rails generate model Posts title:string content:text   Postsという名前のモデルを生成
- rails db:migrate   マイグレーションファイルを実行してデータベースのスキーマ(テーブルやカラム)を変更する
#### データベース内にpostsテーブルが作成され、その中にtitleとcontentカラムが追加される

gitブランチからマイグレーション関連をしたmergeの場合「rails db:migrate」をする必要があると理解できた。