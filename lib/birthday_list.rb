require 'date'

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
    today = Date.today.to_s.split("-")
    today_year = today[0].to_i

    @birthday_list.each do |item|
      b_split = item[:dob].split("-") # [0] - year, [1] - month, [2] - day
      return "It's #{item[:name]}'s birthday today! They are #{
        today_year - b_split[0].to_i} years old!" if "#{b_split[1]}-#{b_split[2]}" == "#{today[1]}-#{today[2]}"
    end
    return false
  end
end
