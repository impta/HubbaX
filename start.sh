echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/impta/HubbaX /HubbaX
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/impta/HubbaX -b $BRANCH /HubbaX
fi
cd /HubbaX
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
