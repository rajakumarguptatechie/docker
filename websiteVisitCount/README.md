## This is used for training. No official use.
## This app is useful to count the number of visits.

port exposed: 80 (Map on any port of your choice on host)

ENV NAME <Give anme of your choice. Default NAME=World>

# How to run
docker run -d --name websitevisit -p 8090:80 -e NAME="Raja Kumar Gupta" rajakumargupta/websitevisitcount:latest
