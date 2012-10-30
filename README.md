Abstract
===========

Special Symfony2 Distribution with Twitter Bootstrap

Install
========

Download and install Composer from http://getcomposer.org.
Then start the command line and type in the following command to install this Symfony Distribution.

> php composer.phar create-project rgies/symfony


Update
========

Update with composer:
> php composer.phar update

Symfony Twig Template Sample
=============================

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