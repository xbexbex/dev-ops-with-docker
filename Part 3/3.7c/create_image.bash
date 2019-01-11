#!/usr/bin/env bash
set -e

read -p "Enter GitHub repository url: " GITHUB_URL

read -p "Docker username: " USERNAME

read -s -p "Docker password: " PASSWORD

/usr/local/bin/docker-entrypoint.sh login -u $USERNAME -p $PASSWORD

git clone $GITHUB_URL

DIR=${GITHUB_URL##*/}
DIR=${DIR%%.*}

if [[ -e /app/"$DIR"/Dockerfile ]]; then
    /usr/local/bin/docker-entrypoint.sh build $DIR -t $DIR
    /usr/local/bin/docker-entrypoint.sh tag $DIR $USERNAME/$DIR
    /usr/local/bin/docker-entrypoint.sh push $USERNAME/$DIR
else
    echo "Dockerfile not found"
fi

exit