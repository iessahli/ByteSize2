.PHONY:

build:
	dotnet restore
	dotnet build --no-restore
	dotnet build --configuration Release --no-restore
	dotnet pack --configuration Release --no-restore --no-build

test:
	dotnet test --no-build --no-restore

push-nuget:
	dotnet nuget push **/*.nupkg --api-key $$TOKEN --source 'https://api.nuget.org/v3/index.json'
