class Calculadora
    def initialize(first_value, second_value) 
        @first_value = first_value
        @second_value = second_value
    end
  
    def soma 
        @first_value + @second_value
    end
  
    def subtracao
        @first_value - @second_value
    end
  
    def divisao
        @first_value / @second_value
    end
  
    def multiplicacao
        @first_value * @second_value
    end
    
    def porcentagem
        (@first_value * @second_value) / 100
    end
end

puts "Informe qual operação deseja utilizar: (1 - Soma, 2 - Subtração, 3 - Divisão, 4 - Multiplicação, 5 - Porcentagem)"
operacao = gets.chomp.to_i

puts "Informe o primeiro valor: "
first_value = gets.chomp

puts "Informe o segundo valor: "
second_value = gets.chomp

case operacao
    when 1
        operacao = :soma
    when 2
        operacao = :subtracao
    when 3
        operacao = :divisao
    when 4
        operacao = :multiplicacao
    when 5
        operacao = :porcentagem
    else
    puts "Insira um número entre 1 e 5"
end

calculadora = Calculadora.new(first_value.to_f, second_value.to_f)
resultado = calculadora.public_send(operacao)

puts resultado