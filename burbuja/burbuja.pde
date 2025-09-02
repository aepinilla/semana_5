int numBurbujas = 50;

// Posicion
float [] posX;
float [] posY;

// Velocidad
float [] velocidadX;
float [] velocidadY;

// Direccion
float [] direccionX;
float [] direccionY;

void setup() {
  noStroke();
  size(500, 500);

  // Inicializacion
  posX = new float[numBurbujas];
  posY = new float[numBurbujas];

  velocidadX = new float[numBurbujas];
  velocidadY = new float[numBurbujas];

  direccionX = new float[numBurbujas];
  direccionY = new float[numBurbujas];

  // Inicializar los valores de nuestro arrays
  for (int i = 0; i < numBurbujas; i++) {
    posX[i] = random(width);
    posY[i] = random(height);

    velocidadX[i] = random(10);
    velocidadY[i] = random(10);

    direccionX[i] = (random(1) > 0.5) ? 1 : -1;
    direccionY[i] = (random(1) > 0.5) ? 1 : -1;
  }
}

void draw() {
  background(255);

  for (int i = 0; i < numBurbujas; i++) {
    posX[i] = posX[i] + velocidadX[i] * direccionX[i];
    posY[i] = posY[i] + velocidadY[i] * direccionY[i];

    if (posX[i] >= width || posX[i] <= 0) {
      // Cambie la direccion del movimiento en el eje X
      direccionX[i] = direccionX[i] * -1;
    }

    if (posY[i] >= height || posY[i] <= 0) {
      // Cambie la direccion del movimiento en el eje Y
      direccionY[i] = direccionY[i] * -1;
    }

    fill(0);
    ellipse(posX[i], posY[i], 50, 50);
  }
}
