actions :create, :remove

attribute :title, kind_of: String, default: "World"
attribute :path, kind_of: String, default: "/tmp/greeting.txt"

def initialize(*args)
  super
  @action = :create
end