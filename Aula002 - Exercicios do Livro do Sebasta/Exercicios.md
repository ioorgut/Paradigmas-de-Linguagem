1. A genealogia das linguagens não é uma escada de progresso. Explique essa afirmação e apresente dois fatores históricos que fazem uma linguagem influenciar outra sem necessariamente substituí-la.
R: A afirmação "A genealogia das linguagens não é uma escada de progresso" mostra que a evolução do software não segue um caminho único, linear ou de substituição direta, onde uma linguagem mais nova simplesmente descarta as anteriores por ser "superior". Conforme observado no texto e no gráfico é possível observar ramos paralelos, ou seja, a genealogia se comporta como uma árvore com múltiplos ramos em vez de uma linha vertical.
Dois fatores históricos que fazem uma linguagem influenciar outra sem necessariamente substituí-la:
1-Herança de Sintaxe e Paradigmas (Reaproveitamento de Conceitos): Uma linguagem posterior adota construções, regras ou sintaxes de linguagens estabelecidas para facilitar a curva de aprendizado ou integrar novos paradigmas de programação, como por exemplo: A linguagem C influenciou diretamente linguagens como C++, Java, Perl e Python, transmitindo sua estrutura sintática e conceitos imperativos sem que C deixasse de existir ou de evoluir.

2-Atendimento a Novos Domínios e Ecossistemas de Aplicação: Novas linguagens surgem para resolver problemas específicos da época (como desenvolvimento web, scripts ou interfaces gráficas), absorvendo ideias de linguagens genéricas anteriores enquanto estas permanecem fortes em seus nichos originais, como por exemplo: O desenvolvimento de páginas web e scripts estimulou o surgimento de linguagens como JavaScript, PHP e Ruby, que incorporaram influências de C, Perl e Smalltalk 80 para resolver problemas da Web, enquanto as linguagens de origem mantiveram seu papel na computação de sistemas, ensino e softwares legados.

-------------------------------------

3. Compare Short Code, Speedcoding e os sistemas A-0/A-1/A-2 quanto ao problema enfrentado e à estratégia adotada. Por que chamá-los simplesmente de compiladores modernos seria impreciso?
R: Short Code, Speedcoding e A-0/A-1/A-2 surgiram para resolver a dificuldade de programar os primeiros computadores diretamente em código de máquina. O Short 		Code simplificava a escrita de expressões matemáticas, mas era executado por interpretação; o Speedcoding estendia virtualmente o IBM 701, oferecendo operações 					de ponto flutuante e outros recursos por meio de um interpretador; e A-0/A-1/A-2 expandiam pseudocódigo em subprogramas de código de máquina, de forma semelhante à expansão de macros. Portanto, chamá-los simplesmente de compiladores modernos é impreciso porque eram sistemas pioneiros e bastante rudimentares de programação automática: alguns eram interpretadores e os A-0/A-1/A-2, embora realizassem tradução para código de máquina, ainda não possuíam as características e a sofisticação dos compiladores modernos.


-------------------------------------

4. Explique por que o projeto Fortran precisou convencer programadores de que código traduzido podia competir com código de máquina escrito à mão. Relacione desempenho, custo de programação e adoção.
R: Por que havia desconfiança. O Fortran precisava provar que o código gerado por compilador podia igualar em desempenho o código escrito manualmente, pois programadores da época dominavam otimizações de hardware e desconfiavam de qualquer camada de abstração.
Essa desconfiança tinha base econômica: tempo de máquina era caro; tempo de programação, embora custoso, era menos visível aos gestores. Reduzir esforço de programação só valeria a pena se o desempenho não fosse sacrificado. A adoção só aconteceu porque as duas condições se cumpriram juntas: menos custo de programação sem perda de desempenho. Faltando uma delas, não haveria razão para abandonar a prática consolidada da programação em assembly.

-------------------------------------

5. Lisp surgiu em um contexto diferente de Fortran. Compare os domínios, a representação de dados e o estilo de computação favorecido pelas duas linguagens.
R: O Fortran foi projetado para o domínio do cálculo científico e numérico, utilizando uma representação de dados baseada em matrizes estáticas mapeadas diretamente no hardware. Essa estrutura servia perfeitamente ao seu estilo de computação imperativo e procedural, focado em comandos sequenciais e loops explícitos otimizados para máxima velocidade.
Já o Lisp mirava o domínio da inteligência artificial e da computação simbólica. Para isso, adotou uma representação de dados flexível baseada em símbolos e listas encadeadas, inovando ao tratar código e dados da mesma forma. Seu estilo era de uma computação funcional e declarativa, que priorizava funções puras, recursão e gerenciamento dinâmico de memória.

-------------------------------------

8. Compare Basic e PL/I como respostas ao desejo de ampliar o acesso ou o alcance da programação. Qual compromisso de projeto aparece em cada caso?
R: Embora ambos tivessem a filosofia de ampliar o uso de linguagens de programação, possuíam objetivos opostos. O Basic foi criado por professores da Faculdade de Dartmouth para ser usado por estudantes de cursos de humanas. Por causa disso, era uma linguagem extremamente leve e simples, havendo floating point como único tipo de dados, e se tornando popular por usuários de microcomputadores nos anos 80. PL/I foi feita em parceria entre IBM e usuários da linguagem Fortran, com o objetivo de facilitar a iminente junção entre programadores de Fortran e COBOL, que ocupavam áreas diferentes (Estudo científico e corporativo), mas estavam cada vez mais se aproximando. PL/I focou em se tornar uma linguagem para diversas aplicações.

-------------------------------------

12. Modele em linguagem natural uma pequena base Prolog com dois fatos, uma regra e uma consulta. Explique por que isso representa programação lógica, não apenas armazenamento de dados.
Modelagem:

	Fato 1: Maria é mãe de José.
	Fato 2: José é pai de Carlos.
	Regra: Uma pessoa X é avó de uma pessoa Y se X for mãe de uma pessoa Z, e essa pessoa Z for pai de Y.
	Consulta: Quem é avó de Carlos?

Explicação: O Prolog representa programação lógica porque possui um motor de inferência ativo capaz de deduzir novas informações de forma autônoma. Diferente de um banco de dados tradicional, que apenas recupera dados estáticos, o Prolog combina fatos e regras por meio de processos como unificação e resolução. Assim, ele descobre sozinho que Maria é avó de Carlos sem a necessidade de você codificar um algoritmo de busca passo a passo.

-------------------------------------

13. Ada resultou de requisitos e projeto em grande escala. Analise como confiabilidade, tipos, pacotes e concorrência se relacionam ao domínio de sistemas críticos.
R: Ada foi projetada para atender projetos de grande escala, especialmente sistemas críticos, nos quais confiabilidade e segurança são fundamentais. A confiabilidade é importante porque esses sistemas precisam funcionar corretamente e minimizar a ocorrência de falhas. Para isso, Ada utiliza uma tipagem forte, que ajuda a identificar erros durante a compilação antes que eles ocorram na execução, aumentando a segurança do programa.
Além disso, os pacotes permitem organizar e dividir o sistema em partes menores, facilitando a modularização, o encapsulamento e a manutenção de projetos grandes. A concorrência, por meio das tasks, permite representar atividades que acontecem simultaneamente, algo comum em sistemas críticos que precisam realizar várias tarefas ao mesmo tempo.
Assim, confiabilidade, tipos, pacotes e concorrência estão relacionados ao objetivo de tornar o desenvolvimento de sistemas grandes mais seguro e organizado. Por isso, Ada é adequada para sistemas críticos, pois seus recursos ajudam a reduzir erros, controlar a complexidade e lidar com atividades simultâneas, contribuindo para um software mais confiável.


-------------------------------------

15. A primeira aplicação de Java não foi a Web, mas a Web impulsionou sua adoção. Explique como mudanças de contexto podem reposicionar uma linguagem.
R: O Java foi criado inicialmente para ser uma linguagem orientada a objetos mais simples e confiável do que C++. Ela não foi projetada para uso Web, porém Esse tipo de linguagem auxilia grandemente na criação de pequenas partes integradas nesses sistemas. Dessa forma, se concluí que linguagens possuem características intrínsecas (Complexidade, orientação) que podem se tornar úteis para aplicações futuras, mesmo não sendo projetadas para este objetivo.

-------------------------------------

17. C# foi apresentada como evolução no ambiente .NET. Compare duas decisões de C# com suas correspondentes em Java ou C++ e explique o problema que pretendem resolver.
R: Duas decisões tomadas para o C# com correspondentes em outras linguagens como o C++ e Java foram as structs e switchs, que foram
aprimoradas para melhor utilidade. Sua criação teve como proposito ser uma linguagem de desenvolvimento de software baseado em 
componentes, com foco em desenvolvimento no framework .NET

-------------------------------------

18. Diferencie XSLT e JSP quanto a entrada, processamento e saída. Por que ambas podem ser chamadas de linguagens híbridas de marcação e programação?
R: Suas principais diferenças são como são usadas e funcionamento, pois o XSLT trabalha com um documentos XML e um XLST, que o converte para outro
documento XML através de instruções no documento XSLT que contem templates que possuem instruções de transformação de acordo com os dados
do arquivo, com sua saída sendo outro arquivo XML na maioria dos casos, enquanto o JSP é uma coleção de tecnologias utilizadas em 
aplicações web de processamento de documentos, atuando quando um navegador solicita seu uso e, em resposta, o programa processador JSP
converte o documento do navegador para um servlet, onde o código Java e HTML embarcado no documento é copiado para o servlet e sua saída é processada
e seu resultado é mostrado em texto puro, geralmente através de HTML 
 



