module Findable
  def find_by_name(name)
    self.all.detect {element.name = name}
  end

  def find_or_create_by_name(name)
    match = find_by_name(name)
    match == nil ? self.create(name) : match
  end
end