# hugo --buildDrafts=false --baseURL="$URL"
hugo mod get -u && hugo --gc --minify --buildDrafts --buildFuture --baseURL="$URL"
