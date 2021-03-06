# TODO: Refactoriza buscando elegancia 
def shout_backwards(string)
  string.upcase.reverse + "!!!"
end


# AYUDAME: Refactoriza buscando elegancia 
def squared_primes(array)
  method1(array).map{|valor| valor*valor}

  #array.find_all{|x| (2..x-1).select(){|i| x % i == 0 }.count == 0 }
end

def method1(array)
  array.find_all{|x| method2(x).count == 0 }
end

def method2(num)
  (2..num-1).select{|i| num % i == 0 }
end

# Driver code... no edites este texto. En la consola esto deberá imprimir puros trues
puts shout_backwards("hello, boot") == "TOOB ,OLLEH!!!"
puts squared_primes([1, 3, 4, 7, 42]) == [1, 9, 49]