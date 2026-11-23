#!/bin/bash
# Annotated Lab 04 commands. Run in the EC2 instance through Session Manager.
# The device name shown in EC2 can appear as /dev/xvdb inside Linux.

# Switch to the ec2-user account before performing the storage steps.
sudo su -l ec2-user

# Show current filesystem usage before attaching or mounting the data volume.
df -h

# Create an ext3 filesystem on the attached data volume. Confirm /dev/sdb first.
sudo mkfs -t ext3 /dev/sdb

# Create the directory that will be used as the original volume mount point.
sudo mkdir /mnt/data-store

# Mount the formatted data volume for the current session.
sudo mount /dev/sdb /mnt/data-store

# Add the mount entry to /etc/fstab so the volume is mounted during startup.
echo "/dev/sdb /mnt/data-store ext3 defaults,noatime 1 2" | sudo tee -a /etc/fstab

# Print /etc/fstab and confirm the mount entry was added.
cat /etc/fstab

# Verify that the data filesystem appears in the mounted filesystem list.
df -h

# Show block devices and their mount points.
lsblk

# Write sample content to a file on the original EBS volume.
sudo sh -c "echo some text has been written > /mnt/data-store/file.txt"

# Read the sample file to verify its contents.
cat /mnt/data-store/file.txt

# After the snapshot is complete, delete the original test file to simulate data loss.
sudo rm /mnt/data-store/file.txt

# Confirm that the original file is no longer present.
ls /mnt/data-store/

# Create a separate mount point for the volume restored from the snapshot.
sudo mkdir /mnt/data-store2

# Mount the restored EBS device at the second mount point.
sudo mount /dev/sdc /mnt/data-store2

# List the restored directory and check that file.txt is present.
ls /mnt/data-store2/

# Read the recovered test file to verify its contents.
cat /mnt/data-store2/file.txt
