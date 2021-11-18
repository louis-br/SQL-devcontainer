#  SQL-devcontainer

Clone your git repository and copy an example inside.

## Examples:
 - java: `make`
 - java-maven: <kbd>Ctrl</kbd> + <kbd>F5</kbd>
 - python: `make`
 - sql-employees: `$sql < employees.sql`
 - sql-university: `$sql < DDL.sql && $sql < smallRelationsInsertFile.sql`

## Commands:
 - `$sql`: Connects to MySQL using `mysql --host=mysql --user=root --password=example`
 - `$postgres`: Connects to Postgres using `psql --host=postgres --username=postgres --password`
 - `code repository`: Opens Visual Studio Code inside your repository
