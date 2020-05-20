class Customer

  attr_accessor :name, :age

  @@all = []

  def initialized(name, age)
    @name = name
    @age = age
    @all << self
  end

  def new_meal(waiter, total, tip=0)
    Meal.new(waiter, self, total, tip)
  end

  def new_meal(customer, total, tip=0)
    Meal.new(self, customer, total, tip)
  end

  def waiters
    meals.map do |meal|
      meal.waiter
    end
  end
end
