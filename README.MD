# [✓] ~~TODO Learning Lab~~

## Description
This is a simple todo app written multiple times in different technologies just for learning purposes.

#### Web

We're going to have three versions of the web one written with React.js, another AngularJS and other with AngularDart.

- [React.js](https://reactjs.org/)
- [AngularJS](https://angular.io/)
- [AngularDart](https://webdev.dartlang.org/angular)

#### Mobile

We're going to have three verssions of the mobile app one written with React Native, another with Angular and the other with Flutter.

- [AngularJS](https://angular.io/)
- [React Native](https://github.com/facebook/react-native)
- [Flutter](https://flutter.io/)

#### Backend

For the backend we will have multiple versions for each platform of these platforms:

- [Java 10](http://www.oracle.com/technetwork/java/javase/downloads/jdk10-downloads-4416644.html)
- [Node.js v8.x](https://nodejs.org)
- [.NET Core 2.1](https://github.com/dotnet/core)
- [Ruby 2.5.x](https://github.com/ruby/ruby)
- [Python 3.6.x](https://www.python.org/downloads/)
- [Go](https://golang.org/)
- [Dart](https://www.dartlang.org/)

#### Gateway

We are going to be using kong for this project.You can find it [here](https://getkong.org/).

#### Databases

This project is going to use these databases interchangeability:

###### Relational
- [Mysql](https://dev.mysql.com/downloads/)
- [MsSql](https://www.microsoft.com/en-us/sql-server/sql-server-downloads-free-trial)
- [MariaDB](https://downloads.mariadb.org/)
- [Postgres](https://www.postgresql.org/)

###### Document
- [MongoDb](https://docs.mongodb.com/manual/installation/)
- [CouchDB](http://couchdb.apache.org/)

###### Graph
- [Neo4j](https://neo4j.com/product/)

###### Key value
- [Redis](https://redis.io/)
- [Riak](http://basho.com/products/riak-kv/)

###### Wide Column
- [Cassandra](http://cassandra.apache.org/)

## Requirements

In order to run this project in you local environment you will need:

- (REQUIRED) [Docker](https://docs.docker.com/)
- (REQUIRED) [Docker compose](https://github.com/docker/compose)
- (REQUIRED) [Dnsmasq](https://wiki.debian.org/HowTo/dnsmasq) / Acrylic DNS Proxy (Windows)
- (OPTIONAL) [Socat](http://www.dest-unreach.org/socat/doc/socat.html)

#### Dnsmasq (Unix) / Acrylic dns proxy (Windows)

(@TODO: write the doc for configuring Acrylic on windows.)

Configure it depending of your OS so you can access Kong API Gateway when send a html/rest request to todo.loc or `*.todo.loc` where `*` is whatever fit subdomain [RFC rules](https://tools.ietf.org/html/rfc1035)

#### Setup Dnsmasq on Linux

```bash
sudo apt-get install dnsmasq
echo 'address=/.todo.loc/127.0.0.1' > /etc/dnsmasq.d/todo-inf
sudo service dnsmasq restart
```

#### Setup Dnsmasq on OSX

```bash
brew install dnsmasq
cd $(brew --prefix)
mkdir etc
echo 'address=/.todo.loc/127.0.0.1' > etc/dnsmasq.conf
sudo cp -v $(brew --prefix dnsmasq)/homebrew.mxcl.dnsmasq.plist /Library/LaunchDaemons
sudo launchctl load -w /Library/LaunchDaemons/homebrew.mxcl.dnsmasq.plist
sudo mkdir /etc/resolver
sudo bash -c 'echo "nameserver 127.0.0.1" > /etc/resolver/loc'
```

## Running the system

(@TODO: write the equivalent .bat scripts for windows.)

- `./startup.sh` **JUST THE FIRST TIME** this script will set everything up for you and run the system.
- `./start.sh` this script allow to run the system starting all containers for you.
- `./stop.sh` this script stop the system.
- `./clean.sh` this script will stop and remove all containers as well as all their volumes and images.
