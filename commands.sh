python3 -m venv env
source .env/bin/activate
ls -al ~/.ssh
ssh-keygen -t ed25519 -C "your_email@example.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
pbcopy < ~/.ssh/id_ed25519.pub
git clone git@github.com:enam1977/udacity_project_2_part1
make all
az webapp up -n flask-azure-project2
az webapp config set -g -n --startup-file
az group create -l -n
az appservice plan create -g -n --is-linux --sku B1
az webapp create -g -p -n --runtime "Python|3.6"
locust -f locustio.py --headless -u 200 -r 10 --run-time 1h
