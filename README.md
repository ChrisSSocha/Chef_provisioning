# http://chef.leopard.in.ua/html/#rubygems-and-bundler

berks vendor cookbooks
vagrant up
knife solo prepare vagrant@localhost -i ~/.vagrant.d/insecure_private_key -p 2222
knife solo cook vagrant@localhost -i ~/.vagrant.d/insecure_private_key -p 2222 -E development
