module Acme
  class Params < Grape::API
    resource :params do
      params do
        requires :name, type: String, default: 'lao cao'
      end
      desc 'try params usage'
      get :basic do
        { name: params[:name], age: 33, job: 'tj engineer' }
      end

      desc 'complex params demo'
      params do
        requires :name, type: Hash do #0.6.1下不支持带type
          optional :first, type: String
          optional :second, type: String
          exactly_one_of :first, :second
        end
      end
      get :complex do
        params
      end
    end
  end
end
