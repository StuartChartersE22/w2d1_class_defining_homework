class CodeclanStudent

  def initialize(student_name, cohort)
    @student_name = student_name
    @cohort = cohort
  end

  def get_name()
    return @student_name
  end

  def get_cohort()
    return @cohort
  end

  def set_name(new_name)
    @student_name = new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  def talk()
    return "I can talk!"
  end

end
