# Skeleton

Entires with a "~" in front are not part of the standard files created with a base rails installation

1. ~CHANGELOG.md: Custom file for this app used to track changes

2. ~Dockerfile: Custom file for specifying instructions for building a docker container of the blog

3. Gemfile: Used to track app dependencies (user generated)

4. Gemfile.lock: Used to track app dependencies (automatically generated)

5. ~Jenkinsfile: Custom file for using Jenkins CI/CD

6. Procfile.dev: A config file used by process managers like Foreman

7. README.md: Used to provide a high level description of this project

8. ~ROADMAP.rtf: Custom file for to keep track of future features of the blog

9. Rakefile: A config file for the Rake build utility that can be used automate different tasks including db migrations, running tests, generating code etc

10. app/: The core components of the Rails application

11. bin/: A set of executable shell scripts that are used during development for various things such as running the server, bundling , running yarn etc

12. config/: A set of config files that determine how the app behaves in different environments

13. config.ru: The entry point for Rack-based servers to start the Rails application

14. db/: Database related files including seeding and migration files

15. ~docker-build.sh: Custom shell file for automating building the blog container

16. ~docker-run.sh: Custom shell file for automating running the blog container locally

17. lib/: Additional files that are necessary for the app but don't fit into the MVC paradigm

18. ~localhost.conf: Used to configure an nginx server

19. log/: Contains log files from the application

20. public/: This serves as the document root for the web server and contains static files and assets that are directly accessible form web browsers without having to go through the Rails stack

21. storage/: Used by ActiveStorage and also contains SQLite db files

22. test/: COntains the test files for the application

23. tmp/: Used for storing temporary files and caches

24. vendor/: Used to store thrid-party code that is not managed by Bundler

25. .env: Used to store environment specific variables such as the SECRET_KEY_BASE. This file should be omitted from git

26. .gitattributes: Configuration file used to specify attributes for paths in a repository

27. .gitignore: Files that should be ignored by git

28. .ruby-version: Specifies the ruby version of the project

29. .dockerignore: Specifies files and directories that should be ignored when building a Docker image
