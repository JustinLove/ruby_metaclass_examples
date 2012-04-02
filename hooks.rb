module Mal
end

module Cobb
  def self.extended(base)
    base.__send__ :include, Mal
  end

  def self.included(base)
    base.extend ClassMethods
    base.extend Mal
  end

  module ClassMethods
    def extract(secret)
    end
  end
end

class Dream
  include Cobb
  extract :expansion_plans
end
