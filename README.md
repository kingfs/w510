# 擎云W510安装 Ubuntu 24.04

## 备份EFI

```sh
sudo cp -rf /boot/efi/EFI EFI
```

## 备份grub

```sh
sudo cp -r /etc/grub.d GRUB/
sudo cp /etc/default/grub GRUB/
```

## 备份DTB

```sh
# sudo apt install device-tree-compiler
sudo cp /sys/firmware/fdt ./DTB/w510_working.dtb
sudo dtc -I dtb -O dts -o ./DTB/w510_working.dts ./DTB/w510_working.dtb
```

## 备份Kernel配置

```sh
sudo cp /boot/config-$(uname -r) ./KERNEL/kernel_config_working.txt
```

## 备份hardware信息

```sh
sudo lshw -html > ./HARDWARE/hardware_profile.html
sudo lspci -k > ./HARDWARE/pci_drivers.txt
```

## 详细查看hardware信息

* https://linux-hardware.org/?probe=49e1200724

```bash
hw-probe -all
```
