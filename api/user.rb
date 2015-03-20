require 'user_model'
require 'entity/user'

module Acme
  class User < Grape::API
    namespace :user do
      route_param :name, desc: 'user resource', requires: true do
        before do
          @user = ::UserModel.find(params[:name])
        end

        desc 'get user', entity: ::Entity::User, notes: 'Get user info'
        get do
          present @user
        end
      end
    end
  end
end
