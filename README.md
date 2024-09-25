# README

The rails code for my blog (n6ls0n[.]com).

## Notes on Local Deployment

- All testing should be done with the app running behind a local nginx reverse proxy.

To test deploying locally w/ http:

- Run bin/dev

## To test locally w/ https

- Generate an ssl certificate with openssl
- Modify the included nginx localhost.conf file to point to the locations of the relevant files. and then copy it to the right location( see bottom of file)
- Run curl --insecure <https://localhost:3000> (assuming the app is running on port 3000).

## To test locally w/ https & Docker

- Build the docker image with "docker-build.sh"
- Run with "docker-run.sh"
- Run curl --insecure <https://localhost:3000> (assuming the app is running on port 3000).

This repo is a fork and extension of <https://github.com/gorails-screencasts/learning-path-blog>
