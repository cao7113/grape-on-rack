module Acme
  class API < Grape::API
    prefix 'api'
    default_format :json # to support swagger docs .json data
    mount ::Acme::Hi
    mount ::Acme::Ping
    mount ::Acme::RescueFrom
    mount ::Acme::PathVersioning
    mount ::Acme::HeaderVersioning
    mount ::Acme::PostPut
    mount ::Acme::WrapResponse
    mount ::Acme::PostJson
    mount ::Acme::ContentType
    mount ::Acme::UploadFile
    mount ::Acme::Entities::API
    mount ::Acme::Params
    mount ::Acme::Auth
    mount ::Acme::Token
    mount ::Acme::User
    mount ::Acme::Tool
    add_swagger_documentation api_version: 'v1', mount_path: '/doc' # , hide_documentation_path: true
  end
end
