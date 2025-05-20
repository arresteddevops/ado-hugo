# hugo --buildDrafts --buildFuture --baseURL="$DEPLOY_PRIME_URL"
hugo mod get -u && hugo --gc --minify --buildDrafts --buildFuture --baseURL="$DEPLOY_PRIME_URL"