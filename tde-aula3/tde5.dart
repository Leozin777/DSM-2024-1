//Escreva uma função que recebe uma lista de inteiros e retorna uma nova lista com apenas os números impares
void main() {
  List<int> m_valoresIniciais = [1, 2, 3, 4, 6, 8];
  List<int> m_listaDeNovosValores =
      CM_DobraOsValores(p_listaDeValores: m_valoresIniciais);
  print(m_listaDeNovosValores);
}

List<int> CM_DobraOsValores({required List<int> p_listaDeValores}) {
  List<int> m_listaDeImpares = [];
  p_listaDeValores.forEach((m_element) {
    var m_resto = m_element % 2;
    if (m_resto != 0) m_listaDeImpares.add(m_element);
  });

  return m_listaDeImpares;
}