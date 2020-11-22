# Slim Starter
Preconfigured Slim app including **PHP-DI**, **Twig** and **Doctrine DBAL**.

# Installation
Clone the repository, move into the created directory and install **Composer** dependencies:
```sh
git clone https://github.com/AymDev/Slim-Starter.git slim-app
cd slim-app
composer install
```

# Usage
The web server implementation is left to the developer. 
For a quick start, use the *PHP built-in server* which can also be started with the custom **Composer** command:
```sh
composer serve
```
You will find the default page on `http://localhost:8000`.

# Configuration
Some services are already configured in the `config/bootstrap.php`.
To configure your **Doctrine DBAL** database connection, add your params in `config/doctrine.php`.

# Controllers
A `AbstractController` class is present with methods for rendering **Twig** templates and to redirect to another route.

# Templating
A `link()` function has been added to **Twig** to create links to routes in templates.