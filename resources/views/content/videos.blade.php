@extends('layouts.app')


@section('content')

@include('layouts.mainTitle')

<main role="main" class="container">
    <div class="row">
        <div class="col-md-8 blog-main p-4">
            <table class="table">
                <thead>
                  <tr>
                    {{-- <th scope="col">#</th> --}}
                    <th scope="col">Название</th>
                    <th scope="col">Ссылка</th>
                    <th scope="col">Дата</th>
                  </tr>
                </thead>

                @foreach ($video as $oneVideo)

                <tbody>
                    <tr>
                      {{-- <th scope="row">{{ $i++ }}</th> --}}
                      <td><a href="{{ $oneVideo->url }}" class="badge badge-light">{{ $oneVideo->title }}</a></td>
                      <td>{{ $oneVideo->link }}</td>
                      <td>{{ date('d/m/Y', strtotime($oneVideo->created_at)) }}</td>
                    </tr>
                </tbody>
                
                @endforeach
            </table>

            {{ $video->links() }}

        </div>

        @include('layouts.aside')<!-- /.blog-sidebar -->
    
    </div>
    
</main>

@endsection