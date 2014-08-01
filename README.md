odiobill/nginx
==============

Very light **nginx** installation based on *Debian*.

By design, it will only run the **nginx** executable, exposing the HTTP standard port and exporting volumes for the *configuration* files, *log* directory and */var/www*, where usually a Debian user wants to store any website.

You can execute it with something like:

    docker run -d -P --name nginx odiobill/nginx

To configure your services, just run *docker inspect nginx* and locate the *configurations* volume to edit its file. To test any change before making them available on the main container, you may want to run another (temporary) one that imports its volumes. Run it with:

    docker run -i -t -P --name config.nginx --volumes-from nginx odiobill/nginx bash


