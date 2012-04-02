require 'drx'

module M
  def m
    :m
  end
end

class I
  include M
end

class E
  extend M
end

I.ancestors
I.singleton_class.ancestors
I.respond_to?(:m)
I.new.respond_to?(:m)
E.ancestors
E.singleton_class.ancestors
E.respond_to?(:m)
E.new.respond_to?(:m)

E.see
