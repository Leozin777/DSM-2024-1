// Escreva uma função que aceita uma lista de números como entrada e retorna uma nova lista contendo apenas os números pares da lista original
void main() {
  List<int> m_valoresIniciais = [1, 2, 3, 4, 6, 8];
  List<int> m_listaDeNovosValores =
      CM_DobraOsValores(p_listaDeValores: m_valoresIniciais);
  print(m_listaDeNovosValores);
}

List<int> CM_DobraOsValores({required List<int> p_listaDeValores}) {
  List<int> m_listaDePares = [];
  p_listaDeValores.forEach((m_element) {
    var m_resto = m_element % 2;
    if (m_resto == 0) m_listaDePares.add(m_element);
  });

  return m_listaDePares;
}