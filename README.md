Abstract
===========

Special Symfony 2.2 Distribution with Twitter Bootstrap

Install
========

Download and install Composer from http://getcomposer.org.
Then start the command line and goto your web root folder. Here a new folder 'symfony' created. Type in the following command to install Symfony.

> php composer.phar create-project -s dev rgies/symfony


Update
========

Update with composer:

> php composer.phar update


Create bundle:
==========================

Create your own new bundle:

> symfony/app/console generate:bundle

Clear cache:

> symfony/app/console cache:clear -env=prod

Test your new bundle:

> http://.../hello/user


Symfony Twig Template Sample
=============================

Copy following html code to your default view symfony/src/[your bundle]/Resources/views/Default/index.html.twig and clear the symfony cache again.


    <!DOCTYPE html>
    <html>
      <head>
        <title>Hello World</title>
        <!-- Bootstrap -->
        <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet" media="screen">
      </head>
      <body>
        <h1>Hello {{ name }}!</h1>
        <script src="{{ asset('js/jquery-1.8.2.min.js') }}"></script>
        <script src="{{ asset('js/bootstrap.min.js') }}"></script>
      </body>
    </html>
