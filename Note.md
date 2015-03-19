# Notes about Grape-based API development

## Useful tips

Index: http://localhost:9292
Swagger docs: http://localhost:9292/apidoc [on Heroku](http://grape-on-rack.herokuapp.com/).
Newrelic: http://localhost:9292/newrelic

Apis: http://localhost:9292/api/xxx
Apis json data: http://localhost:9292/api/docs

## Todo

  * entity
  * models with sqlite3
  * jsonp cors
  * guard 在debug时表现不太正常
  * upgrade v1-->v2
https://github.com/dblock/grape-on-rack-v1-inside-v2
http://architects.dzone.com/articles/evolving-apis-using-grape-api
http://code.dblock.org/2013/07/19/evolving-apis-using-grape-api-versioning.html
  * newrelic dig
  * deploy to heroku

## Rails

good sample: https://github.com/mateuszkosmider/todo-grape-api

## Auth

* strategy: basic, digest, oauth, others

https://github.com/faber-lotto/grape_api_signature
https://github.com/dblock/grape_warden
https://github.com/cutalion/grape-api-example
https://github.com/balauru/grape-oauth2-sample

## Rake tasks

  rake routes

## add local swagger doc

  * git clone https://github.com/swagger-api/swagger-ui
  * replace apidoc/index.html css and js path

## Reload feature in development environment

  * [gem guard-rack] http://code.dblock.org/2012/02/23/watching-rack-application-changes-with-guard-rack.html
   
    run: bundle exec guard #using now, invoke rackup, good!

  * [gem shot-gun] https://github.com/rtomayko/shotgun 

  * [gem rerun] https://github.com/alexch/rerun

  * [gem grape-reload] not good, 配置复杂有破坏性，不好理解

## Ref

* http://www.programmableweb.com/news/top-tools-to-help-you-mock-web-services/how-to/2014/01/13
* http://code.dblock.org/2012/01/30/grape-api-mounted-on-rack-w-static-pages.html
* http://bitboxer.de/2014/02/09/grape/
* https://github.com/bitboxer/grape_swagger_example
