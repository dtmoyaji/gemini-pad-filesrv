FROM elasticsearch:8.14.1

# analysis-kuromoji プラグインのインストール
RUN bin/elasticsearch-plugin install analysis-kuromoji

# analysis-icu プラグインのインストール
RUN bin/elasticsearch-plugin install analysis-icu
