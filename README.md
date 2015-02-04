# Chef provisioning test

Based off [Cooking Infrastructure by Chef](http://chef.leopard.in.ua/html)

```
vagrant init
knife solo init .
```

```
berks vendor cookbooks
vagrant up
knife solo prepare vagrant@localhost -i ~/.vagrant.d/insecure_private_key -p 2222
knife solo cook vagrant@localhost -i ~/.vagrant.d/insecure_private_key -p 2222 -E development
```

```
cd site-cookbooks
berks cookbook jenkins
```
