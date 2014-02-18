Symfony 2 - Rapid Development Edition
==============================

Symfony 2.4 Rapid-Development-Edition with Twitter Bootstrap3, jQuery and GUI Bundle (Generator UI).

![](http://www.rgies.de/rad/rapid_development.png)

## Install ##

Download and install **[Composer](http://getcomposer.org/download)**.
Then start the command line and navigate to your web root folder.

**Type in the following command to install:**

	php composer.phar create-project -s dev rgies/symfony [my-project-folder]

## Start work##

Finish the composer install process an setup the database configuration.

**Call the web interface and create a new bundle:**

	http://.../app_dev.php/gui

## Twig template sample ##

To get twitter bootstrap running in your twig view you must extend from the ```base twig template```. See sample below.

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
