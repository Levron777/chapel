@extends('layouts.app')


@section('content')

@include('layouts.mainTitle')

    <main role="main" class="container">
        <div class="row">
            <div class="p-4 col-md-8 blog-main">
                <h3 class="pb-4 mb-4 font-italic border-bottom">
                    Новости
                </h3>

                @foreach ($news as $oneNews)
                    
                <div class="row mb-2">
                    <div class="col-md">
                        <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                            <div class="col p-4 d-flex flex-column position-static">
                                <strong class="d-inline-block mb-2 text-primary">{{ $oneNews->rubric }}</strong>
                                <a class="text-muted" href="/one/{{ $oneNews->id}}"><h3 class="mb-0">{{ $oneNews->title }}</h3></a>
                                
                                @if ($oneNews->created_at)
                                    <div class="mb-1 text-muted">{{ date('d.m.Y', strtotime($oneNews->created_at)) }}</div>
                                @else
                                    <div class="mb-1 text-muted">{{ date('d.m.Y', strtotime($oneNews->updated_at)) }}</div>
                                @endif

                                {{-- <p class="card-text mb-auto">{!! str_limit($oneNews->description, 100) !!}</p> --}}
                                <p class="card-text mb-auto">{!! strip_tags(str_limit($oneNews->description, 150)) !!}</p>
                                <a href="/one/{{ $oneNews->id}}" class="stretched-link">Продолжить чтение...</a>
                            </div>
                            <div class="col-auto d-none d-lg-block">
                                {{-- <svg class="bd-placeholder-img" width="200" height="250" xmlns="img/easter1280.jpg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg> --}}
                                <img src="img/easter1280.jpg" class="rounded" alt="" width="250" height="200">
                            </div>
                        </div>
                    </div>
                </div>

                @endforeach

                {{ $news->links() }}

            </div><!-- /.blog-main -->

            @include('layouts.aside')<!-- /.blog-sidebar -->

        </div><!-- /.row -->
    </main><!-- /.container -->

@endsection