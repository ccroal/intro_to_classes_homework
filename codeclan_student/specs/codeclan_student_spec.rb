require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student')

class CodeclanStudentTest < Minitest::Test

  def setup()
    @student1 = CodeclanStudent.new("Graeme", "G15")
  end

  def test_student_has_name()
    name = @student1.student_name()
    assert_equal("Graeme", name)
  end

  def test_student_has_cohort
    cohort = @student1.student_cohort()
    assert_equal("G15", cohort)
  end

  def test_change_student_name()
    new_name = @student1.change_name("Steven")
    assert_equal("Steven", new_name)
  end

  def test_change_student_cohort()
    new_cohort = @student1.change_cohort("G16")
    assert_equal("G16", new_cohort)
  end

  def test_can_student_talk()
    assert_equal("I can talk", @student1.student_talk())
  end

  def test_say_favourite_language()
    favourite_language = @student1.favourite_language("Ruby")
    assert_equal("I love Ruby", favourite_language)
  end
end
