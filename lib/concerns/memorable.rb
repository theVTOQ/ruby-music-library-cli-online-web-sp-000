module Memorable
  module ClassMethods
    def destory_all
      self.all.clear
    end

    def create(name)
      self.new(name)
    end
  end

  module InstanceMethods
    def save
      self.class.all << self
    end
  end
end
