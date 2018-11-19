class CodeclanStudent


  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def student_name()
    return @name
  end

  def student_cohort()
    return @cohort
  end

  def change_name(new_name)
    @name = new_name
  end

  def change_cohort(new_cohort)
    @cohort = new_cohort
  end

  def student_talk()
    return "I can talk"
  end

  def favourite_language(favourite_language)
    return "I love #{favourite_language}"
  end
end
