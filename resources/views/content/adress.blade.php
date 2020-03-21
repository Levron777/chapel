@extends('layouts.app')


@section('content')

@include('layouts.mainTitle')

<main role="main" class="container">
    <div class="row">
        <div class="col-md-8 blog-main">

            @foreach ($adress as $adress)
                
            <div class="blog-post p-4">
                <strong class="d-inline-block mb-2 text-primary">{{ $adress->rubric }}</strong>
                <h2 class="blog-post-title">{{ $adress->title }}</h2>
                <p class="blog-post-meta">{{ date('d/m/Y', strtotime($adress->created_at)) }}</p>
                <p>{!! $adress->description !!}</p>
            </div><!-- /.blog-post -->
            
            @endforeach
        </div>

        @include('layouts.aside')<!-- /.blog-sidebar -->
    
    </div>
    
</main>

@endsection