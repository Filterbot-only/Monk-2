if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Megalalon/Monk-filter.git /Monk-filter
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Monk-filter
fi
cd /Monk-filter
pip3 install -U -r requirements.txt
echo "🍃Starting Bot🍃...."
python3 bot.py
