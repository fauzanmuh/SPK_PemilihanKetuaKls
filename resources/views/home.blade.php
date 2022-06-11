@extends('template.index')

@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Home</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">

                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header border-0">
                            <div class="d-flex justify-content-between">
                                <h3 class="card-title">Selamat Datang</h3>
                            </div>
                        </div>
                        <div class="card-body">
                            Sistem Pemilihan Ketua Kelas TI-3G Menggunakan Metode n Simple Additive Weighting (SAW)
                            <br><br> Cara Menggunakan Sistem:
                            <ol>
                                <li>Menentukan alternatif dan kriteria-kriteria yang akan dijadikan acuan dalam pengambilan 
                                    keputusan.</li>
                                <li>Menentukan rating kecocokan setiap alternatif pada setiap kriteria (X).</li>
                                <li>Membuat matriks keputusan berdasarkan kriteria.</li>
                                <li>Kemudian melakukan normalisasi matriks berdasarkan persamaan yang disesuaikan dengan 
                                    jenis atribut (atribut Benefit ataupun atribut Cost) sehingga diperoleh matriks ternormalisasi R.</li>
                                <li>Hasil akhir diperoleh dari proses perankingan yaitu penjumlahan dari perkalian matriks 
                                    ternormalisasi R dengan vektor bobot sehingga diperoleh nilai terbesar yang dipilih sebagai 
                                    alternatif terbaik sebagai solusi.</li>
                            </ol>
                        </div>
                    </div>
                    <!-- /.card -->

                </div>
                <!-- /.col-md-6 -->

            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->
@endsection
