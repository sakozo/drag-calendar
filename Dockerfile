FROM ruby:2.5.1

# 必要なパッケージのインストール（基本的に必要になってくるものだと思うので削らないこと）
RUN apt-get update -qq && \
    apt-get install -y build-essential \ 
                       libpq-dev \        
                       nodejs           

# 作業ディレクトリの作成、設定
RUN mkdir /app_name 

# 作業ディレクトリ名をAPP_ROOTに割り当てて、以下$APP_ROOTで参照

ENV APP_ROOT /app_name 
WORKDIR $APP_ROOT


ADD ./Gemfile $APP_ROOT/Gemfile
ADD ./Gemfile.lock $APP_ROOT/Gemfile.lock

# Gemfileのbundle install
RUN bundle install
ADD . $APP_ROOT