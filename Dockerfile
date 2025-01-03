# ベースイメージとしてOpenJDKを使用
FROM openjdk:17-jdk-slim

# 作業ディレクトリを設定
WORKDIR /app

# アプリケーションのJarファイルをコピー
COPY target/chatapp2-0.0.1-SNAPSHOT.jar app.jar

# Renderが使用するPORT環境変数をExpose
EXPOSE 8080

# 健全性のためにDockerイメージサイズを最適化
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates && \
    rm -rf /var/lib/apt/lists/*

# アプリケーションの起動コマンド
CMD ["java", "-jar", "app.jar"]
