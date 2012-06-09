require 'drx'

class Super
end

class Sub < Super
  def normal
  end

  class <<self
    def meta
    end

    class <<self
      def metameta
      end

      #see
    end

    #see
  end
end

Sub.new.see
