# Template LaTeX Tugas Akhir Sains Data Itera

[![latest version](https://img.shields.io/github/v/release/diwahsap/template-ta-sd-itera)](https://github.com/diwahsap/template-ta-sd-itera/releases/)
[![commits since latest version](https://img.shields.io/github/commits-since/diwahsap/template-ta-sd-itera/latest)](https://github.com/diwahsap/template-ta-sd-itera/commits/master)
[![repo size](https://img.shields.io/github/repo-size/diwahsap/template-ta-sd-itera)](https://github.com/diwahsap/template-ta-sd-itera)
[![license](https://img.shields.io/github/license/diwahsap/template-ta-sd-itera)](./LICENSE)
[![build status](https://img.shields.io/github/actions/workflow/status/diwahsap/template-ta-sd-itera/ci.yaml?branch=main)](https://github.com/diwahsap/template-ta-sd-itera/actions/workflows/ci.yaml)

Repositori ini berisi template [LaTeX](https://www.latex-project.org/) dari panduan tugas akhir yang disesuaikan dengan format yang diberlakukan oleh Sains Data, Institut Teknologi Sumatera (Itera). 

> Contoh file PDF dari template ini bisa dilihat di [sini](https://diwahsap.github.io/template-ta-sd-itera/buku-ta.pdf).

## Cara Menggunakan Template

Bagian utama dokumen terletak pada file [`main.tex`](./main.tex) yang digunakan untuk mengatur package LaTeX yang digunakan serta file lain yang akan diinputkan pada dokumen.
Setelah kompilasi dilakukan, hasilnya akan ada beberapa file `main` dengan format yang berbeda.
Yang terutama adalah file `main.pdf` yang merupakan hasil akhir dari proses kompilasi dokumen.

Selain file `main.tex`, ada juga beberapa bagian lain dari template ini yang bisa diubah, seperti:

- **[`abstrak`](./abstrak)**, berisi file `*.tex` untuk abstrak dalam Bahasa Indonesia dan Bahasa Inggris.
- **[`bab`](./bab)**, berisi file `*.tex` dari setiap bab yang akan dimasukkan pada buku tugas akhir.
- **[`gambar`](./gambar)**, berisi file `*.jpg`, `*.png`, maupun format gambar lain yang akan dimasukkan pada buku tugas akhir.
- **[`lainnya`](./lainnya)**, berisi file `*.tex` dari halaman lain seperti lembar pengesahan, kata pengantar, biografi penulis, dsb. yang akan dimasukkan pada buku tugas akhir.
- **[`pustaka/pustaka.bib`](./pustaka/pustaka.bib)**, berisi daftar pustaka yang akan dimasukkan pada dokumen.
- **[`pustaka/variables.tex`](./pustaka/variables.tex)**, berisi variabel-variabel yang memuat nama, nrp, dan hal-hal lain yang dapat disesuaikan dengan kebutuhan penulis.

> Penjelasan lebih lanjut mengenai penggunaan template ini akan dijelaskan dengan comment yang tersedia pada setiap file yang ada.

## Ucapan Terima Kasih dan Referensi

Terima kasih banyak kepada beberapa sumber yang menginspirasi penulis untuk membuat template ini, yaitu

- [B201 Telematics Laboratory, ITS](https://github.com/b201lab/template-buku-ta-its)
- [Template LaTeX IF Itera](https://github.com/josestg/Latex-TA-IF-ITERA)
- [Template LaTeX SAP Itera](https://www.overleaf.com/project/6163a7c46c2d4fec909aa54f)

## Lisensi

Kode sumber yang ada pada repositori ini dilisensikan di bawah [lisensi MIT](./LICENSE).
