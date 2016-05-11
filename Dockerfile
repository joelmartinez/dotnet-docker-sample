FROM microsoft/dotnet-preview:latest

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY project.json /usr/src/app
COPY NuGet.Config /usr/src/app

ENV ASPNETCORE_URLS="http://*:3000"
ENV ASPNETCORE_ENVIRONMENT="Development"
ENV USE_POLLING_FILE_WATCHER=1

RUN dotnet restore

# Bundle app source
COPY . /usr/src/app

EXPOSE 3000

ENTRYPOINT ["dotnet", "watch"]

