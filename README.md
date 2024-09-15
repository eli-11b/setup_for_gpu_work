# Get Setup for GPU Work and GPU Container Work
<img src="https://github.com/user-attachments/assets/424030a6-be7f-45f3-900e-cef7cf511883" width="350">

How to get setup for gpu work on your machine

<br>


### Steps: 
1. Google cuda toolkit install and select your architecture, version, and installer type. In this instance it's x86_64, ubuntu 20.04, and local.

LINK: https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&Distribution=Ubuntu&target_version=20.04&target_type=runfile_local

<img src="https://github.com/user-attachments/assets/1f6bfb0f-dbe1-4e68-a629-e30167f3a555"  height="250">

2. Download it and make it executable and run it. Select the drivers and toolkit only after agreeing to the EULA.

```
wget https://developer.download.nvidia.com/compute/cuda/12.6.1/local_installers/cuda_12.6.1_560.35.03_linux.run
sudo chmod +x cuda_12.6.1_560.35.03_linux.run
sudo ./cuda_12.6.1_560.35.03_linux.run
```

**Type Accept**

<img src="https://github.com/user-attachments/assets/99e022eb-d858-42b1-902d-625d941ca025" width="350">

**Select only driver and toolkit**

<img src="https://github.com/user-attachments/assets/b8073611-5165-4458-b55d-2301dbce6fb0" width="350">



3. Install Nvidia-container-toolkit
```
sudo apt install nvidia-container-toolkit
```

4. Reload daemon and restart docker
```
sudo systemctl reload-daemon
sudo systemctl restart docker
```

5. Test if it works locally with nvidia-smi: (You should see your gpu(s))
<img src="https://github.com/user-attachments/assets/33029c76-39f6-467c-bee5-c91d343f0d2f" width="350">

6. Test in container to see if you can use/see your gpu(s) in container: (similiar results)
```
docker run -it --gpus all --rm --name gpu-test nvidia/cuda:12.6.1-cudnn-devel-ubu
ntu20.04 nvidia-smi
```

7. Set persistence mode
```
nvidia-smi -pm 1
```
### DONE!! You are ready for GPU work in and out of containers!!

# Questions?
<br>
<img src="https://github.com/user-attachments/assets/710669b1-49b7-4936-834c-c523781db754"  height="150">
