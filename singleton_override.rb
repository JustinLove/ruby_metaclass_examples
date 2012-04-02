class Foo
  def foo
    :foo
  end
end

x = Foo.new
def x.foo
  :blarg
end

x.foo
