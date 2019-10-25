This is Dockerfile for Docker Registry

# To run this registry use below command

docker run -d				 \
  -p 5000:5000				 \
  --restart=always			 \
  --name registry			 \
  -v /mnt/registry:/var/lib/registry	 \
  rajakumargupta/registry:2
