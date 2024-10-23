STARTUP_PROJECT=
CONTEXT_PROJECT=
CONTEXT_NAME=

# Usage: make add-migration name=<migration_name>
add-migration:
	dotnet ef migrations add $(name) -p $(CONTEXT_PROJECT) -s $(STARTUP_PROJECT) -c $(CONTEXT_NAME)

# Usage: make drop-migration
# Will remove the last migration only
drop-migration:
	dotnet ef migrations remove -p $(CONTEXT_PROJECT) -s $(STARTUP_PROJECT) -c $(CONTEXT_NAME)

# Usage: make update-database migration?=<migration_name>
# migration parameter is optional. If not provided will be updated to the last migration
update-database:
	dotnet ef database update $(migration) -p $(CONTEXT_PROJECT) -s $(STARTUP_PROJECT) -c $(CONTEXT_NAME)
