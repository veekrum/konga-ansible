## Kong API-gateway and konga UI with docker-compose wrapped with ansible
Ansible-playbook for installing the docker, docker-compose and also kong,konga and postgres

## Requirements
  - Open port: 8080,80 and 443
  - ansible 

### for running project
  - git clone the project
  - change the ip in inventory
  - run: `ansible-playbook -i inventory main.yml`
### where to see?
  - `http://Public_IP:8080`
### Port Info
  - 8080 ## for konga web UI
  - 80 ## http port for kong
  - 443 ## https port for kong
  - 8001 ## kong-admin API
### How to create https?
  - generate a ssl certificate
  - goto konga web UI
  - Add the certificate[crt,key] with domain name 
  - now you can use https://domain_name/api_gateway_name/v1/
