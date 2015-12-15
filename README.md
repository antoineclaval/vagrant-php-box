vagrant-php-box
===============

Set upa PHP5 development box with apache, mysql, phpmyadmin. In one command line.


<h2>How to run</h2>

<ul>
  <li>
    Install vagrant using the installation instructions in the 
    <a href="http://docs.vagrantup.com/v2/installation/" /target="_blank">Getting Started document</a>
  </li>
  <li>Clone this repository and run $ vagrant up</li>
  <li>Put your php files inside the sites folder, defined in config.vm.synced_folder. File will be accessible on the VM at /var/www</li>
  <li>Access http://192.168.50.50/ </li>
</ul>

<h2>PHP My Admin</h2>
<ul>
  <li>Available on http://192.168.50.50/phpmyadmin/</li>
  <li>User: root Password: root</li>
</ul>


<h2>Included components</h2>

<ul>
  <li>php5</li>
  <li>apache2</li>
  <li>php5-cli</li>
  <li>php5-xdebug</li>
  <li>php5-mysql</li>
  <li>php5-imagick</li>
  <li>php5-mcrypt</li>
  <li>php-pear</li>
  <li>php5-dev</li>
  <li>php5-curl</li>
  <li>php5-sqlite</li>
  <li>libapache2-mod-php5</li>
</ul>

