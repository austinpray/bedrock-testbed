# bedrock-testbed

## initializing bedrock

Inside the project repo either:

```bash
git clone git@github.com:roots/bedrock.git site
```

Or

```bash
docker run --rm -it -v $PWD:/app composer create-project roots/bedrock site
```

Then

```bash
make init
```

## running the testbed

Add `bedrock.test` to your hosts file as

```
127.0.0.1 bedrock.test
```

Then

```bash
docker-compose up
```

It should be available at [http://bedrock.test]()

Do the normal WordPress setup or whatever wp-cli cleverness wpdevs do these
days. Get access to wp-cli via `docker-compose run web bash`

Go to site/.gitignore and comment everything out. We want everything checked
into the repo because this is just a local testbed and we don't care.
