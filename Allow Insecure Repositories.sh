# rm -rf /etc/apt/trusted.gpg.d/*
# edit /etc/apt/sources.list # add [trusted=yes] to every repo # Example: deb [trusted=yes] http://localmachine/debian wheezy main

apt -o Acquire::AllowInsecureRepositories=true -o Acquire::AllowDowngradeToInsecureRepositories=true update
apt-get --allow-unauthenticated upgrade

# wget https://http.kali.org/kali/pool/main/k/kali-archive-keyring/kali-archive-keyring_2022.1_all.deb --no-check-certificate
# sudo apt install ./kali-archive-keyring_2022.1_all.deb

# [Fix Broken dependancy]
apt --fix-broken install
# [Apt Update]
apt get update
# [Apt key update]
apt-key adv –keyserver keyserver.ubuntu.com –recv-keys 3B4FE6ACC0B21F32 # if this fails (it did on the VPS) due to a shared library was missing
# [Installing gnupg package]
apt-get install gnupg
apt-key adv
