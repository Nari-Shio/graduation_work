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

# 環境変数の設定（デフォルトは production）
ENV RAILS_ENV=production
ENV RAILS_SERVE_STATIC_FILES=true
ENV RAILS_LOG_TO_STDOUT=true

# アセットのプリコンパイル
RUN bundle exec rake assets:precompile --trace

# サーバーを起動
CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]