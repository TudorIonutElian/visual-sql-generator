echo "=============================================================";
echo "==============STARTING SETUP BACKEND DATABASE "==============;
echo "=============================================================";


if [ $1 ]
then
  docker-compose build;
  docker-compose up -d;
fi

#docker exec -i db mysql -uroot -pqwerty  <<< "show databases;"
echo "====== APPLING develop.sql script ======";
docker exec -it db mysql -uroot -pqwerty -e "source /var/www/html/backend/develop/scripts/develop.sql";
echo "====== APPLIED develop.sql script ======";

