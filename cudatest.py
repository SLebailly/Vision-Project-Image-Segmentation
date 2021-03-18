import torch

print("testing availability of CUDA...")
print(torch.cuda.device_count())
print(torch.cuda.current_device())
sys.stdout.flush()

device = torch.device('cuda')
a = torch.randn(10, 10, device=device)

os.system('nvidia-smi')