Abstract
===========

Special Symfony 2.4 Distribution with Twitter Bootstrap

Install
========

Download and install Composer from http://getcomposer.org.
Then start the command line and goto your web root folder. Create here your new project folder and then jump into this folder. Type in the following command to install Symfony.

> php composer.phar create-project -s dev rgies/symfony ./


Update
========

Update with composer:

> php composer.phar update


Create bundle:
==========================

Create your own new bundle:

> ./app/console generate:bundle

Clear cache:

> ./app/console cache:clear -env=prod

Test your new bundle:

> http://.../hello/user


Symfony Twig Template Sample
=============================

Copy following html code to your default view symfony/src/[your bundle]/Resources/views/Default/index.html.twig and clear the symfony cache again.

#### src/[your bundle]/Resources/views/Default/index.html.twig
    <!DOCTYPE html>
    <html>
      <head>
        <title>Hello World</title>
        <!-- Bootstrap -->
        <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet" media="screen">
      </head>
      <body>
        <h1>Hello {{ name }}!</h1>
        
        <!-- Sample Bootstrap Components -->
        <h4>Bootstrap Labels:</h4>
        <p>
            <span class="label">Default</span>
            <span class="label label-success">Success</span>
            <span class="label label-warning">Warning</span>
            <span class="label label-important">Important</span>
        </p>

        <p>Here you can insert your twitter bootstrap components</p>
        
        <script src="{{ asset('js/jquery-1.10.2.min.js') }}"></script>
        <script src="{{ asset('js/bootstrap.min.js') }}"></script>
      </body>
    </html>


Symfony Twig Sample with base Template
========================================

Copy following html code to your default view symfony/src/[your bundle]/Resources/views/Default/index.html.twig and adjust the symfony/app/Resources/views/base.html.twig. Clear the symfony cache again.


####app/Resources/views/base.html.twig

    <!DOCTYPE html>
    <html>
        <head>
            <meta charset="UTF-8" />
            <title>{% block title %}Welcome!{% endblock %}</title>
            <!-- Bootstrap -->
            <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet" media="screen">
            {% block stylesheets %}{% endblock %}
            <link rel="icon" type="image/x-icon" href="{{ asset('favicon.ico') }}" />
        </head>
        <body>
            {% block body %}{% endblock %}
            <script src="{{ asset('js/jquery-1.10.2.min.js') }}"></script>
            <script src="{{ asset('js/bootstrap.min.js') }}"></script>
            {% block javascripts %}{% endblock %}
        </body>
    </html>

####src/[your bundle]/Resources/views/Default/index.html.twig

    {% extends '::base.html.twig' %}
    {% block title %}Hello{% endblock %}
    {% block body %}
    <h1>Hello {{ name }}!</h1>

    <!-- Sample Bootstrap Components -->
    <h4>Bootstrap Labels</h4>
    <p>
        <span class="label label-default">Default</span>
        <span class="label label-primary">Primary</span>
        <span class="label label-success">Success</span>
        <span class="label label-info">Info</span>
        <span class="label label-warning">Warning</span>
        <span class="label label-danger">Danger</span>
    </p>

    <p>Here you can insert your twitter bootstrap components</p>
    {% endblock %}
    
