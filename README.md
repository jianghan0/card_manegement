## 確認方法
### URL
https://card-manegement.herokuapp.com/

### 確認用アカウント
```ruby
# adminユーザー
ユーザー名： admin@gmail.com
パスワード： password

# 一般ユーザー
ユーザー名： common_01@gmail.com
パスワード： password

ユーザー名： common_02@gmail.com
パスワード： password

ユーザー名： common_03@gmail.com
パスワード： password
```

## 使用技術
言語： ruby、javascript(ES6)  
フレームワーク： Ruby on Rails、React
PaaS： Heroku  
DB： SQLite（開発環境）、PostgreSQL（本番環境）  
テンプレートエンジン： slim  
CSS： Sass、BEM記法  
多言語対応： i18n（一部しか実装していない）  
その他ライブラリー: Jquery、 Devise等  

## DB設計
![er図](https://qiita-image-store.s3.amazonaws.com/0/113339/dbe93899-b672-0779-25cd-714e746d6486.png)

## 実装方針
- 標準的なMVC使用
- APIはバージョン更新可能ように設計
- 管理ページと一般ユーザー向けページをはっきり分ける
- 管理画面はReactで非同期処理で実装
