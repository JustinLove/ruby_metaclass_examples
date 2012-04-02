class Actor
  def dream
    :sheep
  end
end

module Cobb
  def dream
    :mal
  end
end

leo = Actor.new
leo.extend Cobb

def leo.totem
  :top
end

c = leo.clone
c.singleton_class == leo.singleton_class
c.dream
c.respond_to? :totem

d = leo.dup
d.singleton_class == leo.singleton_class
d.dream
d.respond_to? :totem

leo.dream
leo.clone.dream

leo.dream
leo.dup.dream
