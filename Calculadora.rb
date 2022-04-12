class Calculadora

    def initialize(primeiro_valor, segundo_valor)
        @primeiro_valor = primeiro_valor
        @segundo_valor = segundo_valor
    end

    def soma
        @primeiro_valor + @segundo_valor
    end

    def subtracao
        @primeiro_valor - @segundo_valor
    end

    def divisao
        @primeiro_valor / @segundo_valor
    end

    def multiplicacao
        @primeiro_valor * @segundo_valor
    end    

    def porcentagem
        (@segundo_valor * @primeiro_valor) / 100
    end

    def modulo
        @primeiro_valor % @segundo_valor
    end

    def potencia
        @primeiro_valor ** @segundo_valor
    end

    puts "\t\t\tCalculadora\n-------------------------------------------------------------------"

    loop do

        puts "\nInforme qual operação deseja utilizar: \n(1) Soma \n(2) Subtração \n(3) Divisão \n(4) Multiplicação \n(5) Porcentagem (o primeiro valor é a % do segundo) \n(6) Módulo \n(7) Potência \n(0) Sair"
        operacao = gets.to_i

        break if operacao == 0
        
        print "\nInforme o primeiro valor: "
        primeiro_valor = gets.to_f

        print "\nInforme o segundo valor: " 
        segundo_valor = gets.to_f

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
            when 6
                operacao = :modulo
            when 7
                operacao = :potencia
            else
                puts "Insira um número entre 1 e 7"
        end

        calculadora = Calculadora.new(primeiro_valor.to_f, segundo_valor.to_f)
        resultado = calculadora.public_send(operacao)
        
        puts "\nO resultado é: #{resultado}"
    end
end