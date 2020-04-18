
install:
	pip install -r requirements.txt

build:
	python manage.py migrate
	python manage.py createsuperuser

load_data:
	python manage.py loaddata planets.json
	python manage.py loaddata people.json
	python manage.py loaddata species.json
	python manage.py loaddata transport.json
	python manage.py loaddata starships.json
	python manage.py loaddata vehicles.json
	python manage.py loaddata films.json

serve:
	python manage.py runserver

dump_data:
	python manage.py dumpdata --format=json resources.planet > resources/fixtures/planets.json --indent 4
	python manage.py dumpdata --format=json resources.people > resources/fixtures/people.json --indent 4
	python manage.py dumpdata --format=json resources.species > resources/fixtures/species.json --indent 4
	python manage.py dumpdata --format=json resources.starship > resources/fixtures/starships.json --indent 4
	python manage.py dumpdata --format=json resources.vehicle > resources/fixtures/vehicles.json --indent 4
	python manage.py dumpdata --format=json resources.transport > resources/fixtures/transport.json --indent 4
	python manage.py dumpdata --format=json resources.film > resources/fixtures/films.json --indent 4


drop_db:
	python manage.py flush

test:
	python manage.py test


clear_cache:
	python manage.py clear_cache
