require 'rspec'
require_relative 'spec_helper'
require_relative '../src/calculadora'

RSpec.describe Calculadora do
  let(:calculadora) { described_class.new }

  describe '#soma' do
    it 'soma dois inteiros positivos' do
      expect(calculadora.soma(4, 5)).to eq(9)
    end

    it 'soma número com zero' do
      expect(calculadora.soma(9, 0)).to eq(9)
    end

    it 'soma números negativos' do
      expect(calculadora.soma(-9, -10)).to eq(-19)
    end
  end

  describe '#subtracao' do
    it 'subtrai dois números' do
      expect(calculadora.subtracao(10, 3)).to eq(7)
      expect(calculadora.subtracao(5, 8)).to eq(-3)
    end
  end

  describe '#multiplicacao' do
    it 'multiplica dois números' do
      expect(calculadora.multiplicacao(4, 5)).to eq(20)
      expect(calculadora.multiplicacao(-3, 2)).to eq(-6)
    end
  end

  describe '#divisao' do
    it 'divide dois números' do
      expect(calculadora.divisao(10, 2)).to eq(5)
      expect(calculadora.divisao(7, 2)).to eq(3.5)
    end

    it 'lança erro ao dividir por zero' do
      expect do
        calculadora.divisao(5, 0)
      end.to raise_error(
        ZeroDivisionError,
        'Divisão por zero não é permitida'
      )
    end
  end

  describe '#potencia' do
    it 'calcula potência' do
      expect(calculadora.potencia(2, 3)).to eq(8)
      expect(calculadora.potencia(5, 0)).to eq(1)
    end
  end

  describe '#raiz_quadrada' do
    it 'calcula raiz quadrada de números positivos' do
      expect(calculadora.raiz_quadrada(16)).to eq(4)

      expect(calculadora.raiz_quadrada(2))
        .to be_within(0.0001).of(1.4142135623730951)
    end

    it 'lança erro para número negativo' do
      expect do
        calculadora.raiz_quadrada(-9)
      end.to raise_error(
        ArgumentError,
        'Não é possível calcular raiz de número negativo'
      )
    end
  end

  describe '#porcentagem' do
    it 'calcula porcentagem' do
      expect(calculadora.porcentagem(150, 20)).to eq(30)
      expect(calculadora.porcentagem(200, 15)).to eq(30.0)
    end
  end
end