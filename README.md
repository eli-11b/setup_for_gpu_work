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
3. Install Nvidia-container-toolkit
```
sudo apt install nvidia-container-toolkit
```

4. Reload daemon and restart docker
```
sudo systemctl reload-daemon
sudo systemctl restart docker
```

# Questions?
<br>
<img src="https://github.com/user-attachments/assets/710669b1-49b7-4936-834c-c523781db754"  height="150">
