TradeStation API Docs
=====================
[![Build Status](https://travis-ci.org/tradestation/api-docs.svg?branch=master)](https://travis-ci.org/tradestation/api-docs)

This repo is used to document the TradeStation API using [Open API Specificiation](https://www.openapis.org/) (AKA Swagger 2.0).

Purpose
-------

- To generate rich API documentation for API consumers to discover and
learn how to use the TradeStation API
- To simplify how API creators design and publish new TradeStation API's 
(preferably in a contract-first manner)

Getting Started
---------------

Creating documentation is easy! 

Just edit the Open API [`swagger.yaml`](spec/swagger.yaml).
The specification is composed using [Open API Specificiation](https://www.openapis.org/) v2.0 (fka Swagger) syntax & rules.
Text within `description` blocks use [Github-flavored Markdown](https://guides.github.com/features/mastering-markdown).

**Once you are done, follow the steps below to Build & Publish.**


Developer Workflow
------------------

### Usage

1. Run `npm install http-server -g`
2. Run `http-server .` from the root path
3. Make changes using your favorite editor 
4. All changes are immediately propagated to your local server.  
    + All documentation pages will be automagically refreshed in a browser after each change
5. Once you finish with the changes you can run tests using: `npm test`
6. Share you changes with the rest of the world by pushing to GitHub :smile:

Links
-----

- SwaggerUI: https://tradestation.github.io/api-docs/swagger-ui/
- Look full spec:
    + JSON https://tradestation.github.io/api-docs/swagger.json
    + YAML https://tradestation.github.io/api-docs/swagger.yaml
- Preview spec version for branch `[branch]`: https://tradestation.github.io/api-docs/preview/[branch]

**Warning:** All above links are updated only after Travis CI finishes deployment

