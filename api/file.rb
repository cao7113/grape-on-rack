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
        url = params[:url] || ::File.expand_path('../../Note.md', __FILE__)
        type = MIME::Types.type_for(url)[0].to_s
        if type.start_with?('text/')
          content_type "#{type};charset=UTF-8"
        end
        open(url).read
      end
    end
  end
end
