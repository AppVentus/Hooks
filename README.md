Hooks
=====

This tool insert a git hook that will run php syntax checks and phpunit tests for your symfony2 application.

1) Installation
---------------

add thoose lines in your composer.json :

    "require-dev": {
        [...],
        "appventus/hooks": "dev-master"
    },

    "scripts": {
        "post-update-cmd": [
            [...],
            "chmod a+x vendor/appventus/hooks/deploy.sh && sh vendor/appventus/hooks/deploy.sh"
        ]
    },


2) Usage
--------

When you'll commit a change, syntax and phpunit will run.
In case of fail, the commit will be aborted
You can run the commit without validation:
    git commit -n


Enjoy !
