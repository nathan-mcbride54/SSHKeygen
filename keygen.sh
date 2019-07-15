#!/bin/bash
if [ ! -f ~/.ssh/id_rsa.pub ]
then
  ssh-keygen -t rsa
fi
  echo Enter your username@your_ip
  read address
  cat ~/.ssh/id_rsa.pub | ssh $address "mkdir -p ~/.ssh && touch ~/.ssh/authorized_keys && chmod -R go= ~/.ssh && cat >> ~/.ssh/authorized_keys"
