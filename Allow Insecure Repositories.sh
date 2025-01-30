# rm -rf /etc/apt/trusted.gpg.d/*
# edit /etc/apt/sources.list # add [trusted=yes] to every repo # Example: deb [trusted=yes] http://localmachine/debian wheezy main

apt -o Acquire::AllowInsecureRepositories=true -o Acquire::AllowDowngradeToInsecureRepositories=true update
apt-get --allow-unauthenticated upgrade

# wget https://http.kali.org/kali/pool/main/k/kali-archive-keyring/kali-archive-keyring_2022.1_all.deb --no-check-certificate
# sudo apt install ./kali-archive-keyring_2022.1_all.deb
