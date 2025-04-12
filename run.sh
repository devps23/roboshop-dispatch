source /data/secrets.txt
cat /data/secrets.txt

if [ -z "${AMQP_HOST}" ]; then
    echo "RabbitMQ host is missing"
    exit 1
fi

if [ -z "${AMQP_USER}" ]; then
    echo "RabbitMQ user is missing"
    exit 1
fi

if [ -z "${AMQP_PASS}" ]; then
  echo "RabbitMQ password is missing"
  exit 1
fi


/app/dispatch