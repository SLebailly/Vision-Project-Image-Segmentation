# Vision-Project-Image-Segmentation
Starting code for the vision task.

# Connect to SSH
ssh s9sileba@thor.cs.uni-saarland.de

# How to build the docker:
docker build -f ./Dockerfile --build-arg USER_GID=$(id -g) --build-arg USER_UID=$(id -u) --build-arg USER_NAME=$(id -un) -t vision-project-image-segmentation:latest .

# How to launch the docker:
docker run -it --rm --runtime=nvidia --pid=host --ipc=host --user=s9sileba -v $(pwd):/src vision-project-image-segmentation:latest
add all volumes that need to be mounted with "-v {path/to/raid/folder}:/{volume_name}"after --user=s9sileba
folders need to exist BEFORE mounting them!!!

# Run the code
run the RUN_{task}.sh file with
bash RUN_{task}.sh
change the CUDA gpu with CUDA_VISIBLE_DEVICES={0,...,7} in the RUN_{task}.sh file

# More Docker Info
You can leave the container (without removing it) by: CTRL + p + q
You can leave the container AND remove it by typing: exit