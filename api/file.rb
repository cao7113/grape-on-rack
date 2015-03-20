require 'open-uri'
module Acme
  class Tool < Grape::API
    resource :tool do
      format :txt
      desc 'get file content'
      params do
        optional :url, type: String, desc: 'path or url'
      end
      get :file do
        # support utf-8 todo ?
        open(params[:url] || (::File.expand_path('../../Note.md', __FILE__))).read
      end
    end
  end
end
