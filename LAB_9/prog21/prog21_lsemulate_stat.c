#include<stdio.h>
#include<sys/stat.h>
#include<unistd.h>
#include<stdlib.h>

int main(int argc, char *argv[]) {
	struct stat statbuf;
	if(stat(argv[1], &statbuf) == -1) {
		printf("Could not stat the file");
		exit(0);
	}
	printf("File: %s\n", argv[1]);
	printf("Inode number: %lu\n", statbuf.st_ino);
	printf("UID: %u\n", statbuf.st_uid);
	printf("GID: %u\n", statbuf.st_gid);
	printf("Type and Permissions: %o\n", statbuf.st_mode);
	printf("Number of links: %lu\n", statbuf.st_nlink);
	printf("Size in Bytes: %lu\n", statbuf.st_size);
	exit(0);
}
