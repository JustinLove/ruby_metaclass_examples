class Dream
  def self.dream
    :sheep
  end

  class <<self
    def foo
      :bar
    end
  end
end

obj = Dream.new

class <<obj
  def bar
    :foo
  end
end

def obj.beep
  :boop
end
