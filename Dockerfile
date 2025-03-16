# ベースイメージ
FROM ruby:3.2.2

# 必要なパッケージをインストール
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client yarn

# 作業ディレクトリを設定
WORKDIR /app

# Gemfile をコピーして bundle install
COPY Gemfile Gemfile.lock ./
RUN bundle install

# アプリのファイルをすべてコピー
COPY . .

# サーバーを起動
CMD ["rails", "server", "-b", "0.0.0.0"]
