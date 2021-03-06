class Article
  
  def initialize(name, price, stock)
    @name = name
    @price = price
    @stock = stock
  end

  def name
    @name
  end

  def stock
    @stock
  end

  def stock=(stock) 
    @stock = stock
  end

  def available(amount = -1)
    @stock >= amount
  end

  def sell(amount)
    @stock -= amount
  end

  def buy(amount)
    @stock += amount
  end

end
