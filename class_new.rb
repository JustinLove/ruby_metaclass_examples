c = Class.new
c.new

c.class_eval do
  def dream
    :sheep
  end
end

c.instance_eval do
  def foo
    :blarg
  end
end

c.new.dream
c.foo

Dream = Class.new
Dream.new

Class.new do
  def dream
    :sheep
  end
end
