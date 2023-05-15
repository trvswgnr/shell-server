while true
do {
  count=$(wc -c < ./pages/home.html)
  header="HTTP/1.0 200 OK\r\nContent-Length: $count\r\n\r\n"
  echo -ne "$header"
  cat ./pages/home.html
} | nc -l -p 8080
done
