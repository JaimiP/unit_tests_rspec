class Calculator
  def sum(num1, num2)
    raise StandardError.new "Nil values not accepted." if (num1.nil? || num2.nil?)
    raise StandardError.new "Strings not accepted" if (num1.class == String || num2.class == String)
    total = num1 + num2
  end
  def difference(num1, num2)
    raise StandardError.new "Nil values not accepted." if (num1.nil? || num2.nil?)
    raise StandardError.new "Strings not accepted" if (num1.class == String || num2.class == String)
    total = num1 - num2
  end
  def product(num1, num2)
    raise StandardError.new "Nil values not accepted." if (num1.nil? || num2.nil?)
    raise StandardError.new "Strings not accepted" if (num1.class == String || num2.class == String)
    total = num1 * num2
  end
  def quotient(num1, num2)
    raise StandardError.new "Nil values not accepted." if (num1.nil? || num2.nil?)
    raise StandardError.new "Strings not accepted" if (num1.class == String || num2.class == String)
    raise StandardError.new "Cannot divide by zero." if (num2 === 0)
    total = num1/num2
  end
  def remainder(num1, num2)
    raise StandardError.new "Nil values not accepted." if (num1.nil? || num2.nil?)
    raise StandardError.new "Strings not accepted" if (num1.class == String || num2.class == String)
    total = num1%num2
  end
end
