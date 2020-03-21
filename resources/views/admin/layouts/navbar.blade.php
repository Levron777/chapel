<nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top">
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="/admin/news">Главная страница<span class="sr-only"></span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/admin/adress/edit">Адрес служения</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/admin/about/edit">О нас</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/admin/contacts/edit">Контакты</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Еще
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="/admin/videos">Видео (воскресные проповеди)</a>
            <a class="dropdown-item" href="/admin/events">Наши события</a>
            <a class="dropdown-item" href="/admin/preachings">Тематические проповеди</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="/admin/english/edit">English</a>
          </div>
        </li>
      </ul>
    
      <ul class="navbar-nav ml-auto">
        <!-- Authentication Links -->
        @guest
            <li class="nav-item">
                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
            </li>
            @if (Route::has('register'))
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                </li>
            @endif
        @else
            <li class="nav-item dropdown">
                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                    {{ Auth::user()->name }} <span class="caret"></span>
                </a>
  
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="{{ route('logout') }}"
                        onclick="event.preventDefault();
                                      document.getElementById('logout-form').submit();">
                        {{ __('Logout') }}
                    </a>
  
                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                        @csrf
                    </form>
                </div>
            </li>
        @endguest
      </ul>
    </div>
  </nav>
  
     {{-- <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" type="search" placeholder="Поиск" aria-label="Search">
          <button class="btn btn-outline-secondary my-2 my-sm-0" type="submit">Поиск</button>
        </form> --}}