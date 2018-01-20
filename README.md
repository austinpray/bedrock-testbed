# wp-gh-docs-testbed

## running the testbed

add `wpghdocs.test` to your hosts file as

```
127.0.0.1 wpghdocs.test
```

then

```bash
docker-compose up
```

It should be available at [http://wpghdocs.test]()

Do the normal WordPress setup or whatever wp-cli cleverness wpdevs do these days. Get access to wp-cli via `docker-compose run web bash`

## how to create this repo

inside the project repo

```bash
docker run --rm -it -v $PWD:/app composer create-project roots/bedrock site
```

go to site/.gitignore and comment everything out. We want everything checked into the repo because this is just a local testbed and we don't care.