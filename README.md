Abstract
===========

Symfony 2.4 Rapid-Development-Edition with Twitter Bootstrap.

Install
========

Download and install [Composer](http://getcomposer.org/download).
Then start the command line and goto your web root folder. Type in the following command to install Symfony.

> php composer.phar create-project -s dev rgies/symfony [my-project]

**Go to your project directory:**

> cd [my-project]

Update
========

**Update with composer:**

> php composer.phar update


Create bundle:
==========================

**Create your own new bundle:**

> ./app/console generate:bundle

**Clear cache:**

> ./app/console cache:clear -env=prod

**Test your new bundle:**

> http://.../hello/user


Twig Template
================

To get twitter bootstrap running in your twig view you must extend from the base twig template. See sample below.

    {% extends '::base.html.twig' %}
    {% block title %}Hello{% endblock %}
    {% block body %}
    <h1>Hello {{ name }}!</h1>

    <!-- Sample Bootstrap Components -->
    <p>Here you can insert your twitter bootstrap components:</p>
    
    <h4>Bootstrap Labels</h4>
    <p>
        <span class="label label-default">Default</span>
        <span class="label label-primary">Primary</span>
        <span class="label label-success">Success</span>
        <span class="label label-info">Info</span>
        <span class="label label-warning">Warning</span>
        <span class="label label-danger">Danger</span>
    </p>

    {% endblock %}
