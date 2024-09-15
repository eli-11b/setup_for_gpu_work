systemctl stop docker
./cuda_12.6.1_560.35.03_linux.run -driver -toolkit -silent
apt install nvidia-container-toolkit
systemctl reload-daemon
systemctl restart docker
docker run -it --gpus all --rm --name gpu-test nvidia/cuda:12.6.1-cudnn-devel-ubuntu20.04 nvidia-smi
echo "setup complete"
