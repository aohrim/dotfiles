#!/bin/bash
set -x

# Re-Bind GPU to Nvidia Driver
virsh nodedev-reattach pci_0000_03_00_0
virsh nodedev-reattach pci_0000_03_00_1

# Reload VFIO-PCI kernal driver
modprobe -r vfio_pci || true
modprobe -r vfio_iommu_type1 || true
modprobe -r vfio || true
modprobe amdgpu
modprobe snd_hda_intel

# Rebind VT consoles
echo 1 > /sys/class/vtconsole/vtcon0/bind

nvidia-xconfig --query-gpu-info > /dev/null 2>&1
echo "efi-framebuffer.0" > /sys/bus/platform/drivers/efi-framebuffer/bind

# Restart Display Manager
systemctl start sddm.service