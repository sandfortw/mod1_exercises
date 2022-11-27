class Appointments

  def initialize
    @appointments = []
  end

  def earliest
    @appointments.sort.first
  end

  def at(time)
    @appointments << time
  end

end

# class Time
# attr_reader :year, :month, :day, :hour, :min

#   def initialize (year, month, day, hour, minute)
#     @year = year
#     @month = month
#     @day = day
#     @hour = hour
#     @minute = minute
#   end

# end