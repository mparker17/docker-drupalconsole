# mparker17/docker-drupalconsole

Use [Drupal Console](https://github.com/hechoendrupal/DrupalConsole) in a Docker container.

# Install

1. Clone this repository

        git clone --recursive https://github.com/mparker17/docker-drupalconsole.git
        cd docker-drupalconsole

2. Build the image:

        docker-build -t drupalconsole .

# Use

1. Run:

        cd /path/to/drupal/root
        docker run --rm -it -v="$pwd:/var/www/html" drupalconsole $rest_of_drupal_console_command

    for example,

        docker run --rm -it -v="$pwd:/var/www/html" drupalconsole list
        docker run --rm -it -v="$pwd:/var/www/html" drupalconsole generate:module

# License

Since the [Drupal Console project](https://github.com/hechoendrupal/DrupalConsole) doesn't contain a license file, I'm not including one here either.

However, since the Drupal Console project [is posted to drupal.org](https://www.drupal.org/project/console), it's [GNU/GPL version 2 and later](https://www.drupal.org/node/1001544).
