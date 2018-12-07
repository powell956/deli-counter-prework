def take_a_number(katz_deli_line, name)
  place = katz_deli_line.length + 1
  place.to_s
  katz_deli_line.push(name)
  return 'Welcome, ' + name + '. You are number ' + place + ' in line.'
end

def now_serving(katz_deli_line)
  if (katz_deli_line.length)
    return 'There is nobody waiting to be served!'
  end

  next_customer = katz_deli_line.shift
  return 'Currently serving ' + next_customer + '.'
end

def line(katz_deli_line)
  people = ''

  if (katz_deli_line.length == 0)
    return 'The line is currently empty.'
  end

  for n in 0..katz_deli_line.length
    if people == ''
      people += '1. ' + katz_deli_line[n]
    else
      people += ", " + (n + 1) + ". " + katz_deli_line[n]
    end
  end

  "The line is currently: " + people
end
