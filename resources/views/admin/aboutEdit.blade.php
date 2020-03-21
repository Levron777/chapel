@extends('admin.layouts.app')


@section('content')

<main role="main" class="container">
    <div class="row">
        <div class="blog-main">
            <div class="jumbotron jumbotron-fluid">
                <div class="container table-responsive-lg table-responsive-md table-responsive-xl">

                    <form action="{{ url('/admin/about/' . $aboutEdit->id . '/save') }}" method="POST">
                        @csrf
                        <table class="table">
                            <h3 class="text-center text-success">Редактировать информацию о нас</h3>
                            <thead>
                                <tr>
                                    <th scope="col">Рубрика</th>
                                    <th scope="col">Название</th>
                                    <th scope="col">Основной текст</th>
                                </tr>
                            </thead>
                            <tbody>

                            <tr>
                                <td><input type="text" class="form-control form-control-sm" name="rubricInput" placeholder="Рубрика" value="{{ $aboutEdit->rubric }}"></td>
                                <td><input type="text" class="form-control form-control-sm" name="titleInput" placeholder="Название" value="{{ $aboutEdit->title }}"></td>
                                <td><textarea class="form-control form-control-sm" name="descriptionInput" id="descriptionInput" placeholder="Основной текст">{{ $aboutEdit->description }}</textarea></td>
                                {{-- <td><input type="text" class="form-control form-control-sm" name="urlInput" placeholder="Ссылка URL" value="{{ $adressEdit->url }}"></td> --}}
                                <td><button type="submit" class="btn btn-outline-success btn-sm btn-block">Сохранить изменения</button></td>
                            </tr>

                            </tbody>   
                        </table>
                    </form>

                    @if (count($errors) > 0)
                        <div class="alert alert-danger">
                            <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                            </ul>
                        </div>
                    @endif
                    
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
