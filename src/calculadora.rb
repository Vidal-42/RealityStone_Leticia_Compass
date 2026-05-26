class Calculadora
  def soma(a, b)
    a + b
  end

  def subtracao(a, b)
    a - b
  end

  def multiplicacao(a, b)
    a * b
  end

  def divisao(a, b)
    raise ZeroDivisionError, 'Divisão por zero não é permitida' if b.zero?

    a.to_f / b
  end

  def potencia(base, expoente)
    base**expoente
  end

  def raiz_quadrada(numero)
    raise ArgumentError,
          'Não é possível calcular raiz de número negativo' if numero.negative?

    Math.sqrt(numero)
  end

  def porcentagem(valor, percentual)
    valor * percentual / 100.0
  end
end