module Acme
  class Hi < Grape::API
    desc 'hello world demo'
    get :hi do
      byebug
      'hi'
    end
  end
end
