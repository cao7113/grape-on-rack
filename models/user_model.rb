class UserModel
  attr_accessor :name, :age, :created_at

  def initialize(opts)
    @name, @age = opts[:name], opts[:age]
    @created_at = Time.now
  end

  @store = {
    mao: 1,
    deng: 2,
    jiang: 3,
    hu: 4,
    xi: 5
  }

  class << self
    def find(name)
      name = name.to_sym # rescue nil?
      age = @store[name]
      new(name: name, age: age)
    end
  end
end
