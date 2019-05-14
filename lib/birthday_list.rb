class Birthday
  attr_reader :birthday_list
  def initialize
    @birthday_list = []
  end

  def add(name, dob)
    @birthday_list.push({ name: name, dob: dob })
  end

  def show
    @birthday_list.each do |item|
      puts "#{item[:name]}, #{item[:dob]}"
    end
  end

  def check
    
  end
end
