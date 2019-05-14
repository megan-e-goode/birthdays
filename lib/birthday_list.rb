class Birthday
  attr_reader :birthday_list
  def initialize
    @birthday_list = []
  end

  def add(name, dob)
    @birthday_list.push([name: name, dob: dob])
    @birthday_list
  end

  def show
    @birthday_list
  end
end
