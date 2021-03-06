module Acme
  class WrapResponseDecorator
    def initialize(app)
      @app = app
    end

    def call(env)
      status, headers, body_proxy = @app.call(env)
      bodies = body_proxy.body.map do |body|
        { body: JSON.parse(body), status: status }.to_json
      end
      headers['content-length'] = bodies.map(&:length).sum.to_s
      [200, headers, bodies]
    end
  end
end
