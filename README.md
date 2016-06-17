## README

### Resouce

* Ruby 2.2.3

* Rails 4.2.4

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

### Config elastichsearch

* Cài đặt Elasticsearch
  sudo apt-get update
  sudo apt-get install elasticsearch

* start và restart lại server ES bằng lệnh

  sudo service elasticsearch start
  sudo service elasticsearch restart

* Vào console chạy lệnh

  User.reindex

