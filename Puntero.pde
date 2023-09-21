class Puntero{

float id;
float x;
float y;
float diametro;

FWorld mundo; //puntero al mudo de fisica
FCircle platano;
FBox plataform;

Puntero (FWorld _mundo, float _id, float _x, float _y){
  
   mundo = _mundo;
    id = _id;
    x = _x;
    y = _y;
    diametro = 80;
    
    platano = new FCircle(diametro);
    platano.setPosition(x, y);
      
    mundo.add(platano);
    mundo.add(plataform);
}

 void setID(float id) {
    this.id = id;
  }

  void borrar() {
    mundo.remove(plataform);
    mundo.remove(platano);
  }
  
  void dibujar() {

    pushStyle();
    noFill();
    stroke(255, 0, 0);
    ellipse(platano.getX(), platano.getY(), diametro, diametro);
    popStyle();
  }






}
