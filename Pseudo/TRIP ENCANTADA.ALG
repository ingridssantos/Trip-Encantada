Algoritmo "Trip Encantada"
//Nome/CPF/Destino/Mês
Var

cadastro:vetor[1..2] de caractere
local:vetor[1..2] de caractere
consulta: inteiro

Inicio
//Cadastro
escreva ("Qual é o seu nome? ")
leia (cadastro[1])
escreva ("Qual o seu CPF? ")
leia (cadastro[2])
escreva ("Qual é o seu destino: ")
leia (local[1])
escreva ("Qual o mês da viagem: ")
leia (local[2])
//Consulta
escreval ("Para consulta, digite 0. Para finalizar, digite 1: ")
leia (consulta)
Se consulta = 0 entao
   escreval ("Dados do cliente[ nome: " + cadastro[1] + ", CPF: " + cadastro[2] + ". Dados da viagem: [destino: " + local[1] + ", mês da viagem: " + local[2] + "].")
    escreva ("Obrigada! Conte com a Trip sempre")
Fimse
Se consulta = 1 entao
     escreva ("Obrigada! Conte com a Trip sempre")
Fimse

Fimalgoritmo