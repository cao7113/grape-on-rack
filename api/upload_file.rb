module Acme
  class UploadFile < Grape::API
    # format :json #fix download spec test
    desc 'Upload an image.'
    params do
      requires :image_file, type: Rack::Multipart::UploadedFile
    end
    post 'avatar' do
      {
        filename: params[:image_file][:filename],
        size: params[:image_file][:tempfile].size
      }
    end

    desc 'Upload and download a file of any format.'
    params do
      requires :file, type: Rack::Multipart::UploadedFile
    end
    post 'download' do
      filename = params[:file][:filename]
      content_type MIME::Types.type_for(filename)[0].to_s
      env['api.format'] = :binary
      header 'Content-Disposition', "attachment; filename*=UTF-8''#{URI.escape(filename)}"
      params[:file][:tempfile].read
    end
  end
end
