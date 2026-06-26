total = 20;

usadas = array_create(total, false);

pergunta_atual = irandom(total - 1);
usadas[pergunta_atual] = true;

tentativas = 2;
quiz_pontos = 0;

resposta_correta = 0;

//perguntas
perguntas[0] = "O que é um algoritmo?";
opA[0] = "Uma sequência de passos para resolver um problema";
opB[0] = "Um tipo de computador";
opC[0] = "Uma linguagem de programação";
opD[0] = "Um erro de sistema";
correta[0] = "A";

perguntas[1] = "O que é uma variável?";
opA[1] = "Um valor fixo";
opB[1] = "Um espaço na memória que armazena dados";
opC[1] = "Um erro no código";
opD[1] = "Um sistema operacional";
correta[1] = "B";

perguntas[2] = "O que é um algoritmo estruturado?";
opA[2] = "Um algoritmo sem lógica";
opB[2] = "Um vírus de computador";
opC[2] = "Um algoritmo organizado em passos bem definidos";
opD[2] = "Um tipo de hardware";
correta[2] = "C";

perguntas[3] = "O que é um laço de repetição?";
opA[3] = "Uma função matemática";
opB[3] = "Um comando que repete instruções";
opC[3] = "Um tipo de variável";
opD[3] = "Um erro lógico";
correta[3] = "B";

perguntas[4] = "Qual estrutura representa decisão?";
opA[4] = "if/else";
opB[4] = "while";
opC[4] = "for";
opD[4] = "print";
correta[4] = "A";

perguntas[5] = "O que é pseudocódigo?";
opA[5] = "Código compilado";
opB[5] = "Descrição de algoritmo em linguagem simples";
opC[5] = "Um vírus";
opD[5] = "Um sistema operacional";
correta[5] = "B";

perguntas[6] = "O que faz um compilador?";
opA[6] = "Executa jogos";
opB[6] = "Traduz código fonte para linguagem de máquina";
opC[6] = "Cria vírus";
opD[6] = "Armazena dados";
correta[6] = "B";

perguntas[7] = "Qual é uma linguagem de programação?";
opA[7] = "HTML";
opB[7] = "Python";
opC[7] = "CPU";
opD[7] = "RAM";
correta[7] = "B";

perguntas[8] = "O que é uma função?";
opA[8] = "Um bloco de código reutilizável";
opB[8] = "Um erro";
opC[8] = "Um hardware";
opD[8] = "Um sistema operacional";
correta[8] = "A";

perguntas[9] = "O que é um array?";
opA[9] = "Uma única variável";
opB[9] = "Uma estrutura que armazena vários valores";
opC[9] = "Um tipo de loop";
opD[9] = "Um vírus";
correta[9] = "B";

perguntas[10] = "O que é lógica de programação?";
opA[10] = "Uso de redes sociais";
opB[10] = "Forma de pensar para resolver problemas com código";
opC[10] = "Montagem de hardware";
opD[10] = "Uso de internet";
correta[10] = "B";

perguntas[11] = "O que é um bug?";
opA[11] = "Um erro no código";
opB[11] = "Um programa correto";
opC[11] = "Um hardware";
opD[11] = "Um algoritmo perfeito";
correta[11] = "A";

perguntas[12] = "O que é depuração (debug)?";
opA[12] = "Criar jogos";
opB[12] = "Encontrar e corrigir erros no código";
opC[12] = "Instalar programas";
opD[12] = "Compilar jogos";
correta[12] = "B";

perguntas[13] = "O que é um fluxo de execução?";
opA[13] = "A ordem em que o código é executado";
opB[13] = "Um tipo de variável";
opC[13] = "Um hardware";
opD[13] = "Um sistema operacional";
correta[13] = "A";

perguntas[14] = "O que é recursão?";
opA[14] = "Um loop infinito";
opB[14] = "Uma função que chama ela mesma";
opC[14] = "Um erro de sintaxe";
opD[14] = "Um tipo de variável";
correta[14] = "B";

perguntas[15] = "Qual estrutura repete enquanto condição for verdadeira?";
opA[15] = "if";
opB[15] = "while";
opC[15] = "switch";
opD[15] = "print";
correta[15] = "B";

perguntas[16] = "O que é um operador lógico?";
opA[16] = "Operador que faz cálculos matemáticos";
opB[16] = "Operador que compara valores lógicos";
opC[16] = "Um hardware";
opD[16] = "Um sistema";
correta[16] = "B";

perguntas[17] = "O que é uma condição?";
opA[17] = "Algo que sempre acontece";
opB[17] = "Expressão que define decisão no código";
opC[17] = "Um tipo de loop";
opD[17] = "Um erro";
correta[17] = "B";

perguntas[18] = "O que é complexidade de algoritmo?";
opA[18] = "A dificuldade de execução de um algoritmo";
opB[18] = "Um tipo de variável";
opC[18] = "Um hardware avançado";
opD[18] = "Um sistema operacional";
correta[18] = "A";

perguntas[19] = "O que é um algoritmo eficiente?";
opA[19] = "Um algoritmo que usa mais memória possível";
opB[19] = "Um algoritmo que resolve o problema com menos recursos";
opC[19] = "Um algoritmo lento";
opD[19] = "Um algoritmo com erro";
correta[19] = "B";