### Installation
<pre>
cd /home
git clone https://github.com/moonbro/docker_practice
cd docker_practice
</pre>
### run
<pre>
# Login For Private Docker Repository
docker login 
docker pull jaemunbro/docker-practice
# volumn mounting and run
docker run -p 80:80 -v /home/docker-practice/Project:/var/www/html jaemunbro/docker-practice
</pre>
