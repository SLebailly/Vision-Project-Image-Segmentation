# Vision-Project-Image-Segmentation
Starting code for the vision task.

# Connect to SSH
ssh -L 8890:localhost:8890 s9sileba@thor.cs.uni-saarland.de

# How to build the docker:
docker build -f ./Dockerfile --build-arg USER_GID=$(id -g) --build-arg USER_UID=$(id -u) --build-arg USER_NAME=$(id -un) -t vision-project-image-segmentation:latest .

# How to launch the docker:
docker run -it --rm --runtime=nvidia --pid=host --ipc=host --user=s9sileba -p 8890:8890 -v $(pwd):/Vision-Project-Image-Segmentation -v /raid/s9sileba/data:/Vision-Project-Image-Segmentation/data -v /raid/s9sileba/.jupyter:/.jupyter -v /raid/s9sileba/savedata:/Vision-Project-Image-Segmentation/savedata vision-project-image-segmentation:latest

add all volumes that need to be mounted with "-v {path/to/raid/folder}:/{volume_name}"after --user=s9sileba
folders need to exist BEFORE mounting them!!!

(the following is old, do not use this commmand to access the Jupyter Notebook from your local PC)
docker run -it --rm --runtime=nvidia --pid=host --ipc=host --user=s9sileba -v $(pwd):/Vision-Project-Image-Segmentation -v /raid/s9sileba/data:/Vision-Project-Image-Segmentation/data -v /raid/s9sileba/.jupyter:/.jupyter -v /raid/s9sileba/savedata:/Vision-Project-Image-Segmentation/savedata vision-project-image-segmentation:latest


# Run the code
bash run.sh
change the CUDA gpu with CUDA_VISIBLE_DEVICES={0,...,7} in the run.sh file

# More Docker Info
You can leave the container (without removing it) by: CTRL + p + q
You can leave the container AND remove it by typing: exit