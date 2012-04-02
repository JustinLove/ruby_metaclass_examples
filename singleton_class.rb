class Dream
end

x = Dream.new

x.class

class <<x
  self
end

x.singleton_class

x.singleton_methods

def x.dream
  :sheep
end

x.singleton_methods
