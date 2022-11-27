class Student
attr_reader :grade

  def initialize
    @grade = 'C'
  end

  def study
    if @grade == 'F'
      @grade = 'B'
    elsif @grade =='D'
      @grade == 'B'
    elsif @grade == 'C'
      @grade = 'B'
    elsif @grade == 'B'
      @grade = 'A'
    elsif @grade == 'A'
      @grade = 'A'
    else
      'NO!'
    end
  end

  def slack_off
    if @grade == 'A'
      @grade = 'B'
    elsif @grade == 'B'
      @grade = 'C'
    elsif @grade == 'C'
      @grade = 'D'
    elsif @grade == 'D'
      @grade = 'F'
    elsif @grade == 'F'
      @grade = 'F'
    else
      'NO!'
    end
  end

end