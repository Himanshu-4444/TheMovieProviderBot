if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Himanshu-4444/TheMovieProviderBot.git /Visual-Movies
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Visual-Movies
fi
cd /TheMovieProviderBot
pip3 install -U -r requirements.txt
echo "Starting VisualMoviesBot...."
python3 bot.py
