module Acme
  class Auth < Grape::API
    resource :auth, desc: 'Try auth algorithm' do

      # can use in endpoint?
      http_basic do |username, password|
        { 'test' => 'test' }[username] == password
      end

      desc 'try Http basic auth'
      get :basic do
        'passed http basic auth'
      end

      http_digest({ realm: 'Test Api', opaque: 'app secret' }) do |username|
        { 'test' => 'test' }[username]
      end
      desc 'try digest auth' 
      get :digest do
        "passed http digest auth"
      end
    end
  end
end
