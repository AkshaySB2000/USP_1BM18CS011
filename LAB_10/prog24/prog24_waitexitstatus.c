#include<unistd.h>
#include<stdio.h>
#include<sys/wait.h>
#include<stdlib.h>
#include<fcntl.h>

int main(int argc, char *argv[]) {
	int f, exits;
	int exitv = 10;
	f = open(argv[1], O_WRONLY | O_CREAT | O_TRUNC, 0664);
	write(f, "Original Process Writes\n", 24);
	switch(fork()) {
		case 0: write(f, "Child Writes\n", 13);
			close(f);
			printf("CHILD: Process terminating with exit value: %d\n", exitv);
			exit(exitv);
		default: wait(&exits);
			 printf("PARENT: Child terminated with exit value: %d\n", WEXITSTATUS(exits));
			 write(f, "Parent Writes\n", 14);
			 exit(20);
	}
}
			 
		
