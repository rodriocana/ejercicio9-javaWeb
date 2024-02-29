package paquete;

public class Pelicula {
    private String nombre;
    private String director;
    private String genero;
    private String fecha;
    private String imagenURL; // Campo para la URL de la imagen

    // Constructor
    public Pelicula(String nombre, String director, String genero, String fecha, String imagenURL) {
        this.nombre = nombre;
        this.director = director;
        this.genero = genero;
        this.fecha = fecha;
        this.imagenURL = imagenURL;
    }

    // Métodos getters
    public String getNombre() {
        return nombre;
    }

    public String getDirector() {
        return director;
    }

    public String getGenero() {
        return genero;
    }

    public String getFecha() {
        return fecha;
    }

    public String getImagenURL() {
        return imagenURL;
    }
}