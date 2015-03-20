# encoding: utf-8
require 'entity/base'
module Entity
  class User < Base
    # expose :_id, format_with: :to_string
    expose :name, documentation: { type: 'string', desc: 'name' }
    expose :age, documentation: { type: 'integer', desc: 'age' }

    with_options(format_with: :iso_timestamp) do # todo
      expose :created_at, documentation: { type: 'Time', desc: 'List created at' }
    end
  end
end
