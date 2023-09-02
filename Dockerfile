FROM ubuntu:20.04 as builder

# Configure OS
ENV TZ=Europe/Warsaw
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Install dependencies
RUN apt-get update 
RUN apt-get install -y curl git wget unzip libgconf-2-4 gdb  libglu1-mesa fonts-droid-fallback  python3
RUN apt-get clean

# Install Flutter
RUN git clone https://github.com/flutter/flutter.git /usr/local/flutter
ENV PATH="/usr/local/flutter/bin:/usr/local/flutter/bin/cache/dart-sdk/bin:${PATH}"

# Install Flutter dependencies
RUN flutter doctor

# Configure flutter for web
RUN flutter channel master
RUN flutter upgrade
RUN flutter config --enable-web

# Copy files
COPY . /app/
WORKDIR /app/

# Build the Widgetbook
RUN flutter pub get
RUN flutter pub run build_runner build --delete-conflicting-outputs
RUN flutter build web -t lib/widgetbook.dart

# Webserver image
FROM nginx:alpine-slim as webserver

# Copy the build from the builder stage
COPY --from=builder /app/build/web /usr/share/nginx/html
