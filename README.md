#rails-api-with-doorkeeper-and-oAuth

Doorkeeper is an OAuth 2 provider for Rails and Grape

Steps:

    1. Create a new rails app
    ```
    $ rails new blog
    $ cd blog
    $ bundle install
    ```
    
    2. create scaffold
    ```
    $ rails g scaffold post title body
    ```
    
    3. Add doorkeeper and doorkeeper-JWT gem in Gemfile
    
    ```
    $ bundle install
    $ rails generate doorkeeper:install
    $ rails generate doorkeeper:migration
    $ rake db:migrate
    ```
    
    4. To protect your API with OAuth, you just need to setup before_actions specifying the actions you want to protect. For example:
    ```ruby
    class Api::V1::ProductsController < Api::V1::ApiController
      before_action :doorkeeper_authorize! # Require access token for all actions
    
      # your actions
    end
    ```


Interacting as an OAuth client with Doorkeeper

https://github.com/doorkeeper-gem/doorkeeper/wiki/interacting-as-an-oauth-client-with-doorkeeper