# projeto_clima

O widget Expanded ocupa todo espaço disponivel e Flexible , da pra dividir porem tem mais flexibilidade

quando possue valores diferentes é dividido proporcionalmente

ListView	Cria uma lista com rolagem vertical.	children, padding

ListTile	Exibe informações organizadas em uma linha.	leading, title, subtitle, trailin

Card	Cria um cartão com sombra e bordas arredondadas.	child

GridView	Organiza widgets em formato de grade.	crossAxisCount, shrinkWrap, physics

Stack	Empilha widgets um sobre o outro.	children

Positioned	Posiciona elementos dentro de um Stack.	left, right, top, bottom

Wrap	Organiza widgets e quebra para a próxima linha automaticamente.	spacing, runSpacing, children

Chip	Exibe pequenas etiquetas de informação.	label, avatar

Divider	Adiciona um separador visual entre seções.	height

=====Diferença entre Row, Column e Stack ====

Row  => organiza widgets horizontalmente.
Column => organiza widgets verticalmente.
Stack  => empilha widgets permitindo sobreposição.

Usar Row quando os elementos devem ficar lado a lado, Column quando devem ficar um abaixo do outro e Stack quando precisar posicionar elementos sobre outros widgets.