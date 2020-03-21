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
                    <th scope="col">Событие</th>
                    <th scope="col">Дата</th>
                  </tr>
                </thead>

                @foreach ($events as $event)

                <tbody>
                    <tr>
                      {{-- <th scope="row">{{ $i++ }}</th> --}}
                      <td><a href="{{ $event->url }}" class="badge badge-light">{{ $event->title }}</a></td>
                      <td><a href="{{ $event->url }}" class="badge badge-light">{{ $event->event }}</a></td>
                      <td><a href="{{ $event->url }}" class="badge badge-light">{{ date('d/m/Y', strtotime($event->created_at)) }}</a></td>
                    </tr>
                </tbody>
                
                @endforeach
            </table>

            {{ $events->links() }}

        </div>

        @include('layouts.aside')<!-- /.blog-sidebar -->
    
    </div>
    
</main>

@endsection