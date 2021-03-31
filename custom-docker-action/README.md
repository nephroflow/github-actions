# custom-docker-action

This action combines multiple docker related steps into 1 step.

Unfortunately in `composite` actions we can only use shell commands, so we cannot rely on other actions to help (eg. docker-login,...). This is why we use shell commands.

Conditionals are also not supported, that's the reason of the `push.sh`

This action does the following:

- login/logout of container registry
- build docker image (with `docker build`)
- (optional) sign and push docker image
- remove the image from the build server