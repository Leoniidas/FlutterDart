void main(){

  var p1 = 0;
  var p2 = 20;
  var p3 = 25;
  var p4 = 5.00;
  var soma = prod1+prod2+prod3+prod4;

  print("A soma dos produtos foi igual a: $soma R\$");

  int pago = 50;
  
  if(pago==0){
    print("Você ainda não pagou pelos produtos");
    exit(0);}

  if(pago<soma)
    print("Ainda faltam ${soma-pago}R\$ para concluir a transação.");

  if(pago>soma)
    print("A transação foi realizada e seu troco será de ${pago-soma}R\$");

  if(pago==soma)
    print("A transação foi concluida sem a necessidade de troco");
}