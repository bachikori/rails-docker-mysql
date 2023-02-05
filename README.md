# README
## Dockerでrailsとmysqlの環境を構築する手順
```
git clone https://github.com/bachikori/rails-docker-mysql.git  
cd rails-docker-mysql
docker login
docker-compose build
docker-compose run --rm web bin/setup # db:createが実行される
docker-compose up
```
localhost:3000でアクセスできます
## コンテナを作成するために実行したコマンド
rails new . --force --database=mysql --skip-bundle  
rails webpacker:install  
rails db:create