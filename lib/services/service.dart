class Service {
  double gasolina = 0.0;
  double etanol = 0.0;

  double calcular(double gasolina, double etanol) {
    if (etanol / gasolina < 0.7) {
      return etanol;
    } else {
      return gasolina;
    }
  }
}
