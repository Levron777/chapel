@extends('layouts.app')


@section('content')

@include('layouts.mainTitle')

<main role="main" class="container">
    <div class="row">
        <div class="col-md-8 blog-main">

            <div class="blog-post p-4">
                <strong class="d-inline-block mb-2 text-primary">{{ $oneNews->rubric }}</strong>
                <h2 class="blog-post-title">{{ $oneNews->title }}</h2>
                
                @if ($oneNews->created_at)
                    <p class="blog-post-meta">{{ date('d.m.Y', strtotime($oneNews->created_at)) }}</p>
                @else
                    <p class="blog-post-meta">{{ date('d.m.Y', strtotime($oneNews->updated_at)) }}</p>
                @endif

                @if ($oneNews->url)
                    <a href="{{ $oneNews->url }}">{!! $oneNews->description !!}</a>
                @else 
                    <p>{!! $oneNews->description !!}</p>
                @endif

            </div><!-- /.blog-post -->
        </div>

        @include('layouts.aside')<!-- /.blog-sidebar -->
    
    </div>
    
</main>

@endsection