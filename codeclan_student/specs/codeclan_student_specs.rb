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
end
