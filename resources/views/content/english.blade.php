@extends('layouts.app')


@section('content')

@include('layouts.mainTitle')

<main role="main" class="container">
    <div class="row">
        <div class="col-md-8 blog-main">

            @foreach ($english as $english)
                
            <div class="blog-post p-4">
                <strong class="d-inline-block mb-2 text-primary">{{ $english->rubric }}</strong>
                <h2 class="blog-post-title">{{ $english->title }}</h2>
                <p class="blog-post-meta">{{ date('d/m/Y', strtotime($english->created_at)) }}</p>
                <p>{!! $english->description !!}</p>
            </div><!-- /.blog-post -->
            
            @endforeach
        </div>

        @include('layouts.aside')<!-- /.blog-sidebar -->
    
    </div>
    
</main>

@endsection