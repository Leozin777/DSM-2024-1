//Escreva uma função que calcule a média
void main() {
  List<int>? m_numeros = [1, 2, 3, 4, 5];
 
  double m_media = cm_CalcularMedia(m_numeros);
  print(m_media);
}

double cm_CalcularMedia(List<int> p_numeros)
{
  int m_resultadoDaSoma = 0;
 
  p_numeros.forEach((m_numero) {
    m_resultadoDaSoma += m_numero;
  });
 
  var m_media = m_resultadoDaSoma / 2;
 
  return m_media;
}
