//Program to perform reverse reading of a file using lseek

#include<stdio.h>
#include<fcntl.h>
#include<unistd.h>
#include<stdlib.h>
#include<sys/stat.h>

int main(int argc, char *argv[]) {
	char buf;
	int size, f;
	f = open(argv[1], O_RDONLY);
	size = lseek(f, -1, SEEK_END);
	while(size-- >= 0) {
		read(f, &buf, 1);
		write(STDOUT_FILENO, &buf, 1);
		lseek(f, -2, SEEK_CUR);
	}
	printf("\n");
	return 0;
}


