Algoritmo "Sistema de Atendimento de Lanchonete"

Var
n: vetor[1..6] de caractere
p: vetor[1..6] de real
q: vetor[1..6] de inteiro
v: vetor[1..6,1..3] de inteiro

i , j , op , x , y , d: inteiro
pag , ent , ped , maior: inteiro
poss , s , aberto: inteiro
total, caixa, valor: real
Inicio
 n[1]<-"Hamburguer"
 n[2]<-"Pizza"
 n[3]<-"Batata"
 n[4]<-"Refri"
 n[5]<-"Suco"
 n[6]<-"Pastel"
 p[1]<-15
 p[2]<-30
 p[3]<-12
 p[4]<-6
 p[5]<-8
 p[6]<-10

 ped<-0
 caixa<-0
 aberto<-0
 op<-0

 para i de 1 ate 6 faca
  q[i]<-0
  para j de 1 ate 3 faca
   v[i,j]<-0
  fimpara
 fimpara

 enquanto op<>7 faca
  escreval("1-Cardapio 2-Novo 3-Adicionar")
  escreval("4-Consultar 5-Pagar 6-Relatorio 7-Sair")
  leia(op)

  escolha op
  caso 1
   para i de 1 ate 6 faca
    escreval(i," ",n[i]," R$ ",p[i])
   fimpara

  caso 2
   se aberto=0 entao
    total<-0
    para i de 1 ate 6 faca
     q[i]<-0
    fimpara
    aberto<-1
    escreval("Pedido aberto")
   senao
    escreval("Ja existe pedido")
   fimse

  caso 3
   se aberto=1 entao
    escreva("Produto: ")
    leia(x)
    se (x>=1) e (x<=6) entao
     escreva("Quantidade: ")
     leia(y)
     se y>0 entao
      q[x]<-q[x]+y
      total<-total+p[x]*y
      escreval("Subtotal: ",p[x]*y)
     fimse
    fimse
   senao
    escreval("Abra um pedido")
   fimse

  caso 4
   se aberto=1 entao
    para i de 1 ate 6 faca
     se q[i]>0 entao
      escreval(n[i]," x ",q[i])
     fimse
    fimpara
    escreval("Total: ",total)
   senao
    escreval("Sem pedido")
   fimse

  caso 5
   se (aberto=1) e (total>0) entao
    escreva("Periodo 1 a 3: ")
    leia(d)
    se (d>=1) e (d<=3) entao
     valor<-total
     se total>80 entao
      valor<-total*0.9
     fimse
     escreva("Entrega 1-Sim 2-Nao: ")
     leia(ent)
     se (ent=1) ou (ent=2) entao
      se ent=1 entao
       valor<-valor+5
      fimse
      escreval("Total: R$ ",valor:0:2)
      escreva("1-Dinheiro 2-Cartao 3-Pix: ")
      leia(pag)
      se (pag>=1) e (pag<=3) entao
       caixa<-caixa+valor
       ped<-ped+1
       para i de 1 ate 6 faca
        v[i,d]<-v[i,d]+q[i]
       fimpara
       aberto<-0
       escreval("Pedido finalizado")
      fimse
     fimse
    fimse
   senao
    escreval("Sem pedido")
   fimse

  caso 6
   escreval("Pedidos: ",ped)
   escreval("Caixa: R$ ",caixa:0:2)
   maior<-0
   pos<-0
   para i de 1 ate 6 faca
    s<-0
    para j de 1 ate 3 faca
     s<-s+v[i,j]
    fimpara
    escreval(n[i],": ",s)
    se s>maior entao
     maior<-s
     pos<-i
    fimse
   fimpara
   se pos>0 entao
    escreval("Mais vendido: ",n[pos])
   fimse

  caso 7
   escreval("Fim")

  outrocaso
   escreval("Opcao invalida")
  fimescolha
 fimenquanto
fimalgoritmo

Fimalgoritmo