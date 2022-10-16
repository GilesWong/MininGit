MininGit-Docker Image
========

*Warning*: MininGit is no longer being actively developed by SoftwareIntrospectionLab. It was working last time we looked, but that may change depending on what happens with Git versions. Good luck :)

Description
-----------

This image containerized Miningit developed by [SoftwareIntrospectionLab](https://github.com/SoftwareIntrospectionLab/MininGit) for research purpose. Use at your own risk. 

The MininGit tool extracts information out of source code repository logs and stores it into a database. MininGit is a fork of Libresoft's CVSAnalY.

Usage
-----

```bash
$ docker pull gileswo/miningit:latest


# IF YOU NEED TO SAVE THE DATA IN MYSQL AFTER CONTAINER IS REMOVED, PLEASE USE -v POINT TO /var/lib/mysql.
# FOR EXAMPLE, -v /root/miningit-data/:/var/lib/mysql/
$ docker run --name=<YOUR NAME FOR THIS CONTAINER> -e MYSQL_ROOT_PASSWORD=<YOUR PASSWORD FOR ROOT USER IN MYSQL> -p 3306:3306 -d miningit:latest

$ docker exec -it <YOUR NAME FOR THIS CONTAINER> bash
```
After entering the container you run, you will need to setup MySQL to meet requirement of Miningit.

```bash
$ mysql -u root -p
# THEN ENTER YOUR PASSWORD SET FOR ROOT USER IN MYSQL

mysql> create database cvsanaly;

mysql> create user operator@localhost identified by '<YOUR PASSWORD FOR USER OPERATOR>'; # PASSWORD HERE CAN BE DIFFERENT FROM ROOT

mysql> grant all on *.* to operator@localhost; # IT IS RECOMMENDED TO ADJUST THE SCOPE OF PRIVILEGES GRANTED HERE.

mysql> exit
```

All set. You can start miningit now.

Just checkout (from Git/SVN/CVS) to obtain a local
version of your repository, and then run `miningit`.
Here's an example using [Voldemort](https://github.com/voldemort/voldemort)

    $ git clone git://github.com/voldemort/voldemort.git ~/Downloads/voldemort
    $ cd ~/Downloads/voldemort
    $ ~/Downloads/voldemort$ miningit 

More options, and a more detailed info about the options, can be
found by running `miningit --help`.


Credits
-------

CVSAnalY is developed by the [GSyC/LibreSoft](http://libresoft.es) group at the
[Universidad Rey Juan Carlos](http://www.urjc.es/) in Móstoles, near Madrid (Spain). It is
part of a wider research on libre software engineering, aimed to gain
knowledge on how libre software is developed and maintained.

~~MininGit is actively contributed to by the [Software Introspection Lab](http://games.soe.ucsc.edu/sil) at [University of California, Santa Cruz](http://www.ucsc.edu), and hosts Git mirrors at https://github.com/SoftwareIntrospectionLab . UCSC can review pull requests and bug reports using GitHub's systems. This is currently more active than the official LibreSoft repository ecosystem, and may be more likely to have your issue reviewed.~~

More information
----------------

* [Official CVSAnalY page](http://tools.libresoft.es/cvsanaly)
* [The GSyC/LibreSoft group](http://libresoft.es)
* [UCSC Software Introspection Lab](http://games.soe.ucsc.edu/sil).

Main authors of CVSAnalY
------------------------
* Carlos Garcia Campos, <carlosgc@gsyc.es>

Contributors of CVSAnalY
------------------------

* Gregorio Robles, <grex@gsyc.escet.urjc.es>
* Alvaro Navarro, <anavarro@gsyc.escet.urjc.es>
* Jesus M. Gonzalez-Barahona, <jgb@gsyc.escet.urjc.es>
* Israel Herraiz, <herraiz@gsyc.escet.urjc.es>
* Juan Jose Amor, <jjamor@gsyc.escet.urjc.es>
* Martin Michlmayr, <tbm@debian.org>
* Alvaro del Castillo, <acs@barrapunto.com>
* Santiago Duenas, <sduenas@libresoft.es>

Contributors of MininGit
------------------------
* Chris Lewis, ([cflewis](https://github.com/cflewis) on GitHub) <cflewis@soe.ucsc.edu>
* Zhongpeng Lin, ([linzhp](https://github.com/linzhp) on GitHub) <zlin5@ucsc.edu>
* Alexander Pepper, ([apepper](https://github.com/apepper) on GitHub) <pepper@inf.fu-berlin.de>



[pp]: http://docs.python.org/using/cmdline.html#envvar-PYTHONPATH

