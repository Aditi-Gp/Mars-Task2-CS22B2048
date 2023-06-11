#!/bin/bash

echo"Method 1 to generate password"
read -p"Length of password is: "PASSWORD_
for i in $(seq 1);
do
   openssl rand -base64 48 | cut -c1-$PASSWORD_
done
