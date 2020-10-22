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

Just navigate to the [`spec`](spec/) folder and edit the Open API [`swagger.yaml`](spec/swagger.yaml).
The specification is composed using [Open API Specificiation](https://www.openapis.org/) v2.0 (fka Swagger) syntax & rules.
Text within `description` blocks use [Github-flavored Markdown](https://guides.github.com/features/mastering-markdown).

**Once you are done, follow the steps below to Build & Publish.**


Developer Workflow
------------------

### Install

1. Install [Node JS](https://nodejs.org/)
    + Node JS 11.x or earlier version is recommended, there is a known compatibility issue with Gulp 3.x and Node 12.x (or later).
2. Clone repo and `cd`
    + Run `npm install`

### Usage

1. Run `npm start`
2. Checkout console output to see where local server is started. 
3. Make changes using your favorite editor or `swagger-editor` (look for URL in console output)
    + Review the [Style guide](CONTRIBUTING.md#style guide). 
4. All changes are immediately propagated to your local server.  
    + All documentation pages will be automagically refreshed in a browser after each change
    + **TIP:** you can open `swagger-editor`, documentation and `swagger-ui` in parallel
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

Recommended Tools
-----------------

  - Text-Editor: [VSCode](https://code.visualstudio.com/)
      + Plugins:
        - [vscode-swaggitor](https://github.com/QN-Solutions/vscode-swaggitor)
        - [vscode-yaml-validation](https://github.com/djabraham/vscode-yaml-validation)    