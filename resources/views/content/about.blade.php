@extends('layouts.app')


@section('content')

@include('layouts.mainTitle')

<main role="main" class="container">
    <div class="row">
        <div class="col-md-8 blog-main">

            @foreach ($about as $about)
                
            <div class="blog-post p-4">
                <strong class="d-inline-block mb-2 text-primary">{{ $about->rubric }}</strong>
                <h2 class="blog-post-title">{{ $about->title }}</h2>
                <p class="blog-post-meta">{{ date('d/m/Y', strtotime($about->created_at)) }}</p>
                <p>{!! $about->description !!}</p>
            </div><!-- /.blog-post -->
            
            @endforeach
        </div>

        @include('layouts.aside')<!-- /.blog-sidebar -->
    
    </div>
    
</main>

@endsection