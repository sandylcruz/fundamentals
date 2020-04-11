def ftoc(temperature)
  celsius = (temperature - 32) * (5.0 / 9)
  celsius
end

def ctof(temperature)
  fahrenheit = (temperature * 9.0 / 5) + 32
  fahrenheit
end
