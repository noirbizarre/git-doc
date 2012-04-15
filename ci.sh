VENV=venv

if [ -d "$VENV" ]; then
	echo "-- virtualenv $VENV exists"
else
	echo "-- creating virtualenv $VENV"
	virtualenv --no-site-packages --distribute $VENV
fi

source $VENV/bin/activate
pip install -r requirements.pip
cd doc
make clean html slides
deactivate
