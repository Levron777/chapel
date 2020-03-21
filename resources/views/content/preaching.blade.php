@extends('layouts.app')


@section('content')

@include('layouts.mainTitle')

<main role="main" class="container">
    <div class="row">
        <div class="col-md-8 blog-main p-4">

            <div class="mb-4">
                <h2 class="blog-post-title">{{ $title }}</h2>
            </div>

            <table class="table">
                <thead>
                  <tr>
                    <th scope="col">Название</th>
                    <th scope="col">Автор</th>
                    <th scope="col">Дата</th>
                  </tr>
                </thead>

                @foreach ($preaching as $onePreaching)

                <tbody>
                    <tr>
                      <td><a href="{{ $onePreaching->url }}" class="badge badge-light">{{ $onePreaching->subTitle }}</a></td>
                      <td>{{ $onePreaching->author }}</td>
                      <td>{{ date('d/m/Y', strtotime($onePreaching->created_at)) }}</td>
                    </tr>
                </tbody>
                
                @endforeach
            </table>

            {{ $preaching->links() }}

        </div>

        @include('layouts.aside')<!-- /.blog-sidebar -->
    
    </div>
    
</main>

@endsection