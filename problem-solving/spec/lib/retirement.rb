class Retirement

  def initialize
  end

  def calculate(age_now, retirement_age)
    if age_now > 0 && retirement_age > 0
      yearsleft = retirement_age - age_now
      retire_year = 2015 + yearsleft
      "You have #{yearsleft} years left until you can retire. It is 2015, so you can retire in #{retire_year}."
    else
      "Error. Age cannot be negative."
    end
  end


end