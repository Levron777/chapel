@extends('admin.layouts.app')


@section('content')

<main role="main" class="container">
    <div class="row">
        <div class="blog-main">
            <div class="jumbotron jumbotron-fluid">
                <div class="container table-responsive-lg table-responsive-md table-responsive-xl">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">Рубрика</th>
                                <th scope="col">Название</th>
                                <th scope="col">Дата размещения</th>
                                <th scope="col">Автор</th>
                                <th scope="col">Ссылка URL</th>
                            </tr>
                        </thead>
                        <tbody>

                        @foreach ($preachings as $preaching)

                        <tr>
                            <td>{{ $preaching->rubric }}</td>
                            <td>{{ $preaching->subTitle }}</td>

                            @if ($preaching->created_at)
                                <td>{{ date("d.m.Y", strtotime($preaching->created_at)) }}</td>
                            @else
                                <td>{{ date('d.m.Y', strtotime($preaching->updated_at)) }}</td>
                            @endif
                        
                            <td>{!! strip_tags(str_limit($preaching->author, 200)) !!}</td>
                            <td>{{ $preaching->url }}</td>
                            <td>
                                <form action="{{ url('/admin/preachings/'. $preaching->id . '/edit') }}" method="POST">
                                    @csrf
                                    <button type="submit" class="btn btn-outline-success btn-sm btn-block">Редактировать</button>
                                </form>
                                
                                <form action="{{ url('/admin/preachings/' . $preaching->id) }}" method="POST">
                                    @csrf
                                    {{ method_field('DELETE') }}
                                    <button type="submit" class="btn btn-outline-danger btn-sm btn-block">Удалить</button>
                                </form>
                            </td>
                        </tr>

                        @endforeach

                        </tbody>   
                    </table>

                    @if (count($errors) > 0)
                        <div class="alert alert-danger">
                            <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                            </ul>
                        </div>
                    @endif

                    <form action="preachings" method="post">
                        @csrf
                        <table class="table">
                            <h3 class="text-center text-success">Добавить проповеди</h3>
                            <tr>
                                <td><input type="text" class="form-control form-control-sm" name="rubricInput" placeholder="Рубрика" value=""></td>
                                <td><input type="text" class="form-control form-control-sm" name="subTitleInput" placeholder="Название"></td>
                                <td><input type="text" class="form-control form-control-sm" name="authorInput" placeholder="Автор"></td>
                                {{-- <td><textarea class="form-control form-control-sm" name="descriptionInput" id="descriptionInput" placeholder="Основной текст"></textarea></td> --}}
                                <td><input type="text" class="form-control form-control-sm" name="urlInput" placeholder="Ссылка URL"></td>
                                <td><button type="submit" class="btn btn-outline-success btn-sm btn-block">Добавить проповедь</button></td>
                            </tr>
                        </table>
                    </form>

                    {{ $preachings->links() }}
                    
                </div>
            </div>
        </div>
    </div>
    
</main>

@endsection

@section('styles')

    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote-bs4.min.css" rel="stylesheet">
    
@endsection

@section('scripts')

    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote-bs4.min.js" defer></script>
    <script>
        $(document).ready(function() {
          $('#descriptionInput').summernote();
        });
    </script>

@endsection
