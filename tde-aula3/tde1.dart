//1 - Crie uma calculadora simples que aceita dois números é uma operação (adição, subtração, multiplicação ou divisão) como entrada e retorna o resultado.
void main() {
  double m_retornoDoCalculo = RealizaCalculo(p_operacao: Operacao.Adicao, p_num1: 5, p_num2:5);

  print(m_retornoDoCalculo);
}

double RealizaCalculo({required Operacao p_operacao, required double p_num1, required double p_num2})
{
    double m_resultado;
    switch(p_operacao)
    {
        case Operacao.Adicao:
            m_resultado = CM_Adicao(p_num1: p_num1, p_num2: p_num2);
        break;
        case Operacao.Subtracao:
            m_resultado = CM_Subtracao(p_num1: p_num1, p_num2: p_num2);
        break;
        case Operacao.Multiplicacao:
            m_resultado = CM_Multiplicacao(p_num1: p_num1, p_num2: p_num2);
        break;
        case Operacao.Divisao:
            m_resultado = CM_Divisao(p_num1: p_num1, p_num2: p_num2);
        break;
    }
        
    return m_resultado;
}

double CM_Adicao({required double p_num1, required double p_num2})
{
    return p_num1 + p_num2;
}
    
double CM_Subtracao({required double p_num1, required double p_num2})
{
    return p_num1 - p_num2;
}
    
double CM_Multiplicacao({required double p_num1, required double p_num2})
{
    return p_num1 * p_num2;
}
    
double CM_Divisao ({required double p_num1, required double p_num2}) 
{
    return p_num1 / p_num2;
}
    
enum Operacao
{
  Adicao,
  Subtracao,
  Multiplicacao,
  Divisao,
}
