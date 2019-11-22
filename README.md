# dockerfiles
Dockerfiles used by the visiont3lab

```
docker build -t visiont3lab/ubuntu-xfce-vnc:cpu .
docker run  --name=pc-cpu-base -d -p 5901:5901 -p 6901:6901 -e VNC_RESOLUTION=1900x1000   visiont3lab/ubuntu-xfce-vnc:cpu-base
docker run  --name=pc-cpu-programming -d -p 5901:5901 -p 6901:6901 -e VNC_RESOLUTION=1900x1000   visiont3lab/ubuntu-xfce-vnc:cpu-programming
docker build -t visiont3lab/ubuntu-xfce-vnc:cpu-programming -f Dockerfile-ubuntu-xfce-vcn\:cpu-programming  .
docker build -t visiont3lab/ubuntu-xfce-vnc:cpu-programming -f Dockerfile-ubuntu-xfce-vcn\:gpu-base  .
docker build -t visiont3lab/ubuntu-xfce-vnc:cpu-programming -f Dockerfile-ubuntu-xfce-vcn\:gpu-programming  .
```


## References
[Good Practices Writing Dockerfile](https://www.docker.com/blog/intro-guide-to-dockerfile-best-practices/)