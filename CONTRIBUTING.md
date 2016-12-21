Contributing to TradeStation API
=====================================

Swagger Style Guide
-------------------

- Use `summary` to provide a "title" for your resources
- Use `description` to provide knowledge required in order to use the resource properly.
- Use `$ref` attributes in operations and add Definitions for each POST body and 
Response Body object.


API Dump scripts
----------------

 You can use the 2 scripts located in `/scripts` named `api.sh` and `dump.sh` to
 quickly dump YAML schemas for payloads that you need in the `definitions` section
 of the swagger spec.

If you `cat` them, you will see notes on usage. Normally I use them something 
like this:

```
cd scripts
./api.sh /data/quote/amzn | ./dump.sh
```

Then copy/past the results into the `definitions` section of the swagger spec.

Note: YMMV on these scripts - they dont handle nulls well, so you might have to fix them up.


Hosting API Docs with Github Pages:
-----------------------------------

1. Enable [Travis](https://docs.travis-ci.com/user/getting-started/#To-get-started-with-Travis-CI%3A) for your repository (**note**: you already have `.travis.yml` file)
2. [Create GitHub access token](https://help.github.com/articles/creating-an-access-token-for-command-line-use/); check `public_repo` on `Select scopes` section.
3. Use the token value as a value for [Travis environment variable](https://docs.travis-ci.com/user/environment-variables/#Defining-Variables-in-Repository-Settings) with the name `GH_TOKEN`
4. Make a test commit to trigger CI: `git commit --allow-empty -m "Test Travis CI" && git push`
5. Wait until Travis build is finished. You can check progress by clicking on the `Build Status` badge at the top
6. If you did everything correct, https://tradestation.github.io/api-docs/ will lead to your new docs
7. **[Optional]** You can setup [custom domain](https://help.github.com/articles/using-a-custom-domain-with-github-pages/) (just create `web/CNAME` file)
