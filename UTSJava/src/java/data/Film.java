/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package data;

public class Film {
    private String judul, genre;
    private int durasi, hargaTiket;
    private String[] jamTayang;

    public Film(String judul, String genre, int durasi, int hargaTiket, String[] jamTayang) {
        this.judul = judul;
        this.genre = genre;
        this.durasi = durasi;
        this.hargaTiket = hargaTiket;
        this.jamTayang = jamTayang;
    }

    // Getter
    public String getJudul() { return judul; }
    public String getGenre() { return genre; }
    public int getDurasi() { return durasi; }
    public int getHargaTiket() { return hargaTiket; }
    public String[] getJamTayang() { return jamTayang; }
}
