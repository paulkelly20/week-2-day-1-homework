require('minitest/autorun')
require_relative('../student.rb')

class TestStudent < Minitest::Test
  def setup()
    @student = Student.new("Paul", 5)

  end

  def test_name

    assert_equal("Paul", @student.name)
  end

  def test_cohort

    assert_equal(5, @student.cohort)
    end

    def test_set_name
      @student.set_name("Dave")
      assert_equal("Dave", @student.name)
    end

    def test_set_cohort
      @student.set_cohort(6)
      assert_equal(6, @student.cohort)
    end

    def test_student_talk
      @student.can_talk()
      assert_equal("i can talk!", @student.can_talk)
    end

    def test_favourite_language
      assert_equal("I love Ruby", @student.student_favourite_language("Ruby"))
    end

    

end
