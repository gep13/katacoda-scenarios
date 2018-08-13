echo "Setting up Cake Environment"
cd /root
echo '' > build.cake
alias cake="docker run -it --rm -v /root:/cake -w /cake cake cake"
clear
