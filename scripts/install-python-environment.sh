sudo yum -y install git

sudo yum -y install @development zlib-devel bzip2 bzip2-devel readline-devel sqlite \
sqlite-devel openssl-devel xz xz-devel libffi-devel systemd-devel findutils 

git clone https://github.com/pyenv/pyenv.git ~/.pyenv

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bash_profile
cat ../utilities/server_alias.sh >> ~/.bash_profile

. ~/.bash_profile

pyenv install 3.8.2

pyenv global 3.8.2

pip install -r requirements.txt
