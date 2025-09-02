// Posicion
float posX;
float posY;

// Velocidad
float velocidadX;
float velocidadY;

// Direccion
float direccionX;
float direccionY;



void setup() {
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
  background(255);
  posX = posX + velocidadX * direccionX;
  posY = posY + velocidadY * direccionY;

  //                OR
  if (posX >= width || posX <= 0) {
    // Cambie la direccion del movimiento en el eje X
    direccionX = direccionX * -1;
  }
  
  if (posY >= height || posY <= 0) {
    // Cambie la direccion del movimiento en el eje Y
    direccionY = direccionY * -1;
  }

  fill(0);
  ellipse(posX, posY, 50, 50);
}
