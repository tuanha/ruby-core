## README

### Resouce

* Ruby 2.2.3

* Rails 4.2.4

* Mysql

### About System

* Admin

* User

### How to Contribute

* Create your branch

* Code

* Push to your branch

* Creat Pull Request

### How to Develop

* We have separate two sides: User side and Admin side

* Each side will have different layout, controller

* All css, js, images of template should be in ``` vendor ``` directory

* Admin layout and User layout should not include stylesheets of each other


### Before start

##### Install Elasticsearch

 * Install

```

wget https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.7.2.deb

sudo dpkg -i elasticsearch-1.7.2.deb

```

 * Auto start Elastic Search for next time restart your computer

```
 sudo update-rc.d elasticsearch defaults
```

 * start và restart lại server ES bằng lệnh

```
  sudo service elasticsearch start
  sudo service elasticsearch restart
```

 * Check Elasticsearch status

```
 sudo service elasticsearch status
```

 * Vào console chạy lệnh

```
  User.reindex
```

##### Install mysql ( if not yet )

```
sudo apt-get install mysql-server mysql-client libmysqlclient-dev
```

##### Update db

```
rake db:seed
```