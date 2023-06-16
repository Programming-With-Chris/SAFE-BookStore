FROM mcr.microsoft.com/dotnet/core/aspnet:3.0 AS runtime

RUN useradd -s /bin/bash -m vscode
RUN groupadd docker && usermod -aG docker vscode

COPY /deploy .
WORKDIR .
EXPOSE 8085
ENTRYPOINT ["dotnet", "Server.dll"]


