class Service {

 double gasolina = 0;
 double etanol = 0;

 // Construtor.
 Service({required this.gasolina, required this.etanol});


 double calculo ( double gasolina, double etanol){  

   double resultado = etanol / gasolina;
    return resultado;

 }


}

