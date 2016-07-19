def return_10()
  return 10
end

def add(number1, number2)
  result = number1 + number2
  return result
end

def subtract(number1, number2)
  result = number1 - number2
  return result
end

def multiply(number1, number2)
  result = number1 * number2
  return result
end

def divide(number1, number2)
  result = number1/number2
  return result
end

def length_of_string(string)
  result = string.length
  return result
end

def join_string(string1, string2)
  result = string1 + string2
  return result
end

def add_string_as_number(string1, string2)
  result = string1.to_i + string2.to_i
  return result
end

def number_to_full_month_name(number)
  case number
  when 1
    return "January"
  when 2
    return "Febuary"
  when 3
      return "March"
  when 4
    return "April"
  when 5
    return "May"
  when 6
    return "June"
  when 7
    return "July"
  when 8
    return "August"
  when 9
    return "September"
  when 10
    return "October"
  when 11
    return "November"
  when 12
    return "December"
  end
end

def number_to_short_month_name(number)
  case number
  when 1
    return "Jan"
  when 2
    return "Feb"
  when 3
      return "Mar"
  when 4
    return "Apr"
  when 5
    return "May"
  when 6
    return "Jun"
  when 7
    return "Jul"
  when 8
    return "Aug"
  when 9
    return "Sep"
  when 10
    return "Oct"
  when 11
    return "Nov"
  when 12
    return "Dec"
  end
end

def volume_of_a_cube(side_length)
  volume = side_length**3
  return volume
end

def volume_of_a_sphere(radius)
  pi = Math::PI
  volume = (4.0/3) * pi * (radius**3)
  return volume.round(2)
end

def fahrenheit_to_celcius(fahrenheit)
  celcius = (fahrenheit.to_f - 32) * 5 / 9
  return celcius.round(1)
end

def password_generator(name, number)
  new_name = name.swapcase
  new_number = number*2
  new_password = "#{new_name}"+new_number.to_s
  return new_password
end