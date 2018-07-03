require ("MiniTest/autorun")
require_relative("../bus")

class BusTest < MiniTest::Test

  def setup
    @double_decker = Bus.new("22", "Ocean Terminal")
  end

  def test_bus_route
    assert_equal("22", @double_decker.route)
  end

  def test_bus_destination
    assert_equal("Ocean Terminal", @double_decker.destination)
  end

  def test_bus_drive
    assert_equal("Brmm Brmm", @double_decker.drive)
  end

  def test_bus_passenger_count_empty
    assert_equal(0, @double_decker.passenger.count)
  end

  def test_bus_create_passenger_pick_up_count
    pass1 = Person.new("Dave", 33)
    @double_decker.bus_pick_up(pass1)
    assert_equal(1, @double_decker.passenger.count)
  end

  def test_bus_create_passenger_drop_off_count
    pass1 = Person.new("Dave", 33)
    pass2 = Person.new("Bill", 33)
    @double_decker.bus_drop_off(pass1)
    assert_equal(1, @double_decker.passenger.count)
  end


end


#---------------------

class PersonTest < MiniTest::Test

  def setup
    @customer = Person.new("John", 18)
  end

  def test_person_name
    assert_equal("John", @customer.name)
  end

  def test_person_age
    assert_equal(18, @customer.age)
  end

end
