obj = Object.new

obj.methods

obj.public_methods
obj.protected_methods
obj.private_methods

class Dream
  def dream
    :sheep
  end
end

Dream.new.methods(false)
Dream.new.public_methods(false)
