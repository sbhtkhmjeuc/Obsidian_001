# DD Command in Linux
Type : #t/Article
Time Created : 2022-06-14 07:05
Last Modified : 2022-06-14 07:05
Subjects: #s/Linux 
Progress: #p/🟡 
URL: https://www.geeksforgeeks.org/dd-command-linux/
Publisher: #psh/GeeksForGeeks
Priority: #i/🟨 

*Definition* - is a command-line utility for Unix and Unix-like operating systems whose primary purpose is to convert and copy files.

### Some practical examples on dd command
#### To backup the entire hard-disk
To backup an entire copy of a hard disk to another hard disk connected to the same system, the UNIX device name of the source hard disk is `/dev/hda`, and device name of the target hard disk is `/dev/hdb`.
_if”_ represents inputfile, and _“of”_ represents output file.
If you give the parameter `“conv=noerror”` then it will continue to copy if there are read errors
```Bash
dd if=/dev/sda of=/dev/sdb
```

#### To backup a Partition
You can use the device name of a partition in the input file, and in the output either you can specify your target path or image file as shown in the dd command.
```bash
dd if=/dev/hda1 of=~/partition.img
```

#### To create an image of a Hard Disk
instead of taking a backup of the hard disk, you can create an image file of the hard disk and save it in other storage devices.(It creates the image of a hard disk `/dev/hda`)
```bash
dd if=/dev/hda of=~/hdadisk.img
```

#### To restore using the Hard Disk Image
To restore a hard disk with the image file of an another hard disk, the following dd command can be used.
```bash
dd if=hdadisk.img of=/dev/hdb
```

#### To create CDROM Backup
dd command allows you to create an iso file from a source file. So we can insert the CD and enter dd command to create an iso file of a CD content.
```bash
dd if=/dev/cdrom of=tgsservice.iso bs=2048
```
the parameter `bs` specifies the block size for the both the input and output file, So dd uses _**2048bytes**_ as a block size in the above command.
