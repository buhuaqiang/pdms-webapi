#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
RUN apt-get update; apt-get install libfontconfig1 -y

WORKDIR /app
EXPOSE 9991

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src
COPY ["PDMS.WebApi/PDMS.WebApi.csproj", "PDMS.WebApi/"]
COPY ["PDMS.Sys/PDMS.Sys.csproj", "PDMS.Sys/"]
COPY ["PDMS.Core/PDMS.Core.csproj", "PDMS.Core/"]
COPY ["PDMS.Entity/PDMS.Entity.csproj", "PDMS.Entity/"]
COPY ["PDMS.Project/PDMS.Project.csproj", "PDMS.Project/"]
COPY ["PDMS.WorkFlow/PDMS.WorkFlow.csproj", "PDMS.WorkFlow/"]
COPY ["PDMS.WebService/PDMS.WebService.csproj", "PDMS.WebService/"]
COPY ["PDMS.Builder/PDMS.Builder.csproj", "PDMS.Builder/"]
RUN dotnet restore "PDMS.WebApi/PDMS.WebApi.csproj"
COPY . .
WORKDIR "/src/PDMS.WebApi"
RUN dotnet build "PDMS.WebApi.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "PDMS.WebApi.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "PDMS.WebApi.dll"]
