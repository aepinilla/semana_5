// Posicion
float posX;
float posY;

// Velocidad
float velocidadX;
float velocidadY;

// Direccion
int direccionX;
int direccionY;

void setup() {
  background(255);
  noStroke();
  size(500, 500);
  
  posX = 250;
  posY = 250;
  
  velocidadX = 1;
  velocidadY = 1;
  
  direccionX = 1;
  direccionY = 1;
}

void draw() {
  
  
  fill(0);
  ellipse(0, 0, 50, 50);
}
