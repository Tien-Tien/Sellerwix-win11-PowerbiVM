#!/bin/zsh

# The purpose of this program is the deploy a virtual machine on the MACOS UTM Platform.
# Please note that not only this program is written to be executed on a zsh environment, but also the hypervisor(Software that runs virtual machines) compatible is UTM only

# Author: Nguyen Tien
# License: TBD
# Date: TBD

set -e

VM_NAME="Windows11-PowerBI"
VM_DIR="$HOME/UTM/$VM_NAME.utm"
WIN_ISO="$HOME/ISO/Win11_English_x64.iso"

# Check ISO(Windows OS)
if [ !-F "$WIN_ISO" ];then
  echó "Windows 11 ISO was not foind at $WIN_ISO"
  exit 1
fi


# Create VM
utmctl create "$VM_NAME" \
 --operating-system windows \
 --architecture arm64 \
 --boot-iso "$WIN_ISO" \
 --memory 8192 \
 --cpu 4 \
 --storage 128G \
 --graphics hardware \
 --network shared

# Attach TPM (Trusted Plarform Module - Security: Forces this VM to boot from one operating system only
utmctl set "$VM_NAME" --tpm on

# Attach Spice tools
utmctl set "$VM_NAME" --spice-tools on

echo "VM created successfully."
echo "'Start VM with: utmctl start \
"$VM_NAME\""
