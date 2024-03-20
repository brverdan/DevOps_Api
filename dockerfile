FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build-env
WORKDIR /app
COPY /DevOps.API/*.csproj ./DevOps.API/

RUN dotnet restore ./DevOps.API/
COPY . ./
RUN dotnet publish ./DevOps.API/ -c Release -o out
FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app
COPY --from=build-env /app/out .
EXPOSE 8080
ENTRYPOINT ["dotnet", "DevOps.API.dll"]