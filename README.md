## README
掲示板アプリを作りながら学ぶRuby_on_Rails入門<br>
http://localhost:3000/posts/new :ローカル環境
![image](https://github.com/risarisato/ruby_lesson/assets/88628553/944ff110-302f-4f77-bb13-3ba58f308b30)


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

## コメントアウトview側
css： /* コメント複数行　*/
rb：# シャープが通常


#### view側
<%# コメントアウト1行のコメントアウト　%>
<!-- viewヘルパを使わない場合:開発者ツールで見える -->
=begin
複数行のコメントアウト
=end

## 知識
- メソッド：Rubyのメソッド定義は、 def と end の間に、実行したい処理
- ログファイルの確認: Railsはlog/development.logにある可能性がある
#### 【CRUD操作のデータベース管理システム】
- Create:生成(new,create)
- Read:読み取り(index,show)
- Update:更新(edit,update)
- Delete:削除(destroy)
