require("minitest/autorun")
require_relative("../codeclan_student.rb")

class CodeclanStudentTest < MiniTest::Test

  def test_creating_new_student__return_name
    new_student = CodeclanStudent.new("Stuart", "E22")
    assert_equal("Stuart", new_student.get_name())
  end

  def test_creating_new_student__return_cohort
    new_student = CodeclanStudent.new("Stuart", "E22")
    assert_equal("E22", new_student.get_cohort())
  end

  def test_changing_existing_student__name
    new_student = CodeclanStudent.new("Stuart", "E22")
    new_student.set_name("Bob")
    assert_equal("Bob", new_student.get_name())
  end

  def test_changing_existing_student__cohort
    new_student = CodeclanStudent.new("Stuart", "E22")
    new_student.set_cohort("E1")
    assert_equal("E1", new_student.get_cohort())
  end

  def test_student_talks
    new_student = CodeclanStudent.new("Stuart", "E22")
    assert_equal("I can talk!", new_student.talk())
  end

  def test_student_says_input_in_sentence
    new_student = CodeclanStudent.new("Stuart", "E22")
    assert_equal("I love Ruby", new_student.say_favourite_language("Ruby"))
  end

end
