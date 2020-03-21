@extends('layouts.app')


@section('content')

@include('layouts.mainTitle')

<main role="main" class="container">
    <div class="row">
        <div class="col-md-8 blog-main p-4">

            @foreach ($readings as $reading)
                
            <div class="blog-post">
                <strong class="d-inline-block mb-2 text-primary">{{ $reading->rubric }}</strong>
                <h2 class="blog-post-title">{{ $reading->title }}</h2>
                <p class="blog-post-meta">{{ date('d/m/Y', strtotime($reading->created_at)) }}</p>

                <div class="embed-responsive embed-responsive-1by1">
                    <iframe class="embed-responsive-item" src="{{ $reading->url }}" allowfullscreen></iframe>
                </div>
                {{-- <p><a href="{{ $reading->url }}">{{ $reading->description }}</a></p> --}}
            </div><!-- /.blog-post -->
            
            @endforeach
        </div>

        @include('layouts.aside')<!-- /.blog-sidebar -->
    
    </div>
    
</main>

@endsection