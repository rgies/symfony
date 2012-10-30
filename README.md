Abstract
===========

Special Symfony2 Distribution with Twitter Bootstrap

Install
========

Download and install Composer from http://getcomposer.org.
Then start the command line and type in the following command to install this Symfony Distribution.

&gt; php composer.phar create-project rgies/symfony


Update
========

Update with composer:

> php composer.phar update


Symfony Twig Template Sample
=============================

&lt;!DOCTYPE html&gt;
&lt;html&gt;
  &lt;head&gt;
    &lt;title&gt;Hello World&lt;/title&gt;
    &lt;!-- Bootstrap --&gt;
    &lt;link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet" media="screen"&gt;
  &lt;/head&gt;
  &lt;body&gt;
    &lt;h1&gt;Hello {{ name }}!&lt;/h1&gt;
    &lt;script src="{{ asset('js/jquery-1.8.2.min.js') }}"&gt;&lt;/script&gt;
    &lt;script src="{{ asset('js/bootstrap.min.js') }}"&gt;&lt;/script&gt;
  &lt;/body&gt;
&lt;/html&gt;
