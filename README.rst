=================
Salt Test Env
=================

A Salt Test Environment using Vagrant


Instructions
============

Run the following commands in a terminal. Git, VirtualBox and Vagrant must
already be installed.

.. code-block:: bash

    git clone https://github.com/zsoltf/salt-test-env.git
    cd salt-test-env
    vagrant up


This will download four boxes and create five virtual machines:

  - master - ubuntu 14.04
  - minion1 - ubuntu 14.04
  - minion2 - windows 2012r2
  - minion3 - freebsd 10.2
  - minion4 - centos 7.1


The Salt Minions will point to the Salt Master and the Minion's keys will
already be accepted.  Because the keys are pre-generated and reside in the repo,
please be sure to regenerate new keys if you use this for production purposes.

You can then run the following commands to log into the Salt Master and begin
using Salt.

.. code-block:: bash

    vagrant ssh master
    sudo salt \* test.ping
