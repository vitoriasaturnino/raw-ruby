class Car
  def get_km(km)
    find_km(km)
  end

  private

  def find_km(km)
    puts "#{/\d{2}km\/h/.match(km)}"
  end
end

fusca = Car.new
fusca.get_km("Um fusca de cor amarela viaja a 80km/h")
