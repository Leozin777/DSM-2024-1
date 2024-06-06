//2 - Escreva uma função que aceita uma lista de números como entrada e retorna uma nova lista onde cada elemento é o dobro do elemento correspondente na lista original.

void main() {
  List<int> m_valoresIniciais = [1, 2, 3];
  List<int> m_listaDeNovosValores =
      CM_DobraOsValores(p_listaDeValores: m_valoresIniciais);
  print(m_listaDeNovosValores);
}

List<int> CM_DobraOsValores({required List<int> p_listaDeValores}) {
  List<int> m_listaDobrada = [];
  p_listaDeValores.forEach((m_element) {
    m_element = m_element * 2;
    m_listaDobrada.add(m_element);
  });

  return m_listaDobrada;
}
