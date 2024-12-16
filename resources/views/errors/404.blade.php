@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row min-vh-100 align-items-center justify-content-center">
        <div class="col-md-8 text-center">
            <div class="card border-0 shadow-lg">
                <div class="card-body p-5">
                    <h1 class="display-1 fw-bold text-danger mb-4">404</h1>
                    <div class="mb-4">
                        <i class="fas fa-exclamation-triangle text-warning display-4"></i>
                    </div>
                    <h2 class="display-6 fw-semibold mb-3">Oops! Halaman Tidak Ditemukan</h2>
                    <p class="lead text-muted mb-4">Halaman yang Anda cari tidak ditemukan atau telah dipindahkan.</p>
                    <div class="d-grid gap-2 col-6 mx-auto">
                        <a href="/" class="btn btn-primary btn-lg shadow-sm">
                            <i class="fas fa-home me-2"></i>Kembali ke Beranda
                        </a>
                        <a href="javascript:history.back()" class="btn btn-outline-secondary">
                            <i class="fas fa-arrow-left me-2"></i>Halaman Sebelumnya
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
