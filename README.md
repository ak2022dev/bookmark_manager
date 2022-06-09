# Bookmark manager project

## User stories

As a user
so that I can quickly revisit favourite websites
I'd like to be able to save my bookmarks to reopen later.

### Initial Domain model diagram

![Initial Domain Model Diagram](./user_story_initial.png\"Initial Domain Model Diagram")

### Database setup

1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager;
3. Connect to the database using the psql command \c bookmark_manager;
4. Run the query we have saved in the db/migrations directory in the file 01_create_bookmarks_table.sql
5. Run further SQL queries in the order they are numbered in that directory.

### Test database setup
1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager;
3. Connect to the database using the psql command \c bookmark_manager;
4. Run the query we have saved in the db/migrations directory in the file 01_create_bookmarks_table.sql
