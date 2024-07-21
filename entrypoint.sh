
exec gunicorn backend.wsgi:application --bind 0.0.0.0:8000 --workers 3

python manage.py migrate --no-input


echo "Collecting static files..." 
python manage.py collectstatic --no-input

echo "Loading JSON data..."
python manage.py load_json_data


