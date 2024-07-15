rm -Rf ./iso-output
mkdir ./iso-output
sudo podman run --rm --privileged --volume ./iso-output:/build-container-installer/build --security-opt label=disable --pull=newer \
ghcr.io/jasonn3/build-container-installer:latest \
IMAGE_REPO=ghcr.io/pliveyns \
IMAGE_NAME=mybluebuild \
IMAGE_TAG=latest \
VARIANT=Silverblue
VERSION=40
