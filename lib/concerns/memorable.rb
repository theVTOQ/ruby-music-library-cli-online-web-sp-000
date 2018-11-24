module Memorable
  module ClassMethods
    def destroy_all
      self.all.clear
    end

    def create(name)
      new_instance = self.new(name)
      new_instance.save
      new_instance
    end

    
  end

  module InstanceMethods
    def save
      self.class.all << self
      self.class.all.sort_by{|element| element.name}
    end
  end
end
