require('minitest/autorun')
require_relative('../library.rb')

class TestLibrary < Minitest::Test
  def setup()
    @rental_books = Library.new [{
      title: "lord_of_the_rings" ,
      rental_details: {
       student_name: "Jeff",
       date: "01/12/16"
      }
    }]
  #   [{
  #   title: "Jaws" ,
  #   rental_details: {
  #    student_name: "Paul",
  #    date: "25/12/16"
  #   }
  # }]
  end

  def test_book
    assert_equal([{
      title: "lord_of_the_rings" ,
      rental_details: {
       student_name: "Jeff",
       date: "01/12/16"
      }
    }], @rental_books.book("lord_of_the_rings"))

  end
end
