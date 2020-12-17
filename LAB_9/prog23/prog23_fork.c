//Program to create a new child process using fork operation

#include<stdio.h>
#include<sys/types.h>
#include<stdlib.h>
#include<unistd.h>

int main() {
	int pid;
	printf("Before Fork OPeration\n");
	pid = fork();
	if(pid > 0) {
		sleep(3);
		printf("Parent Process: \nPID: %d, Parent PID: %d, Child PID: %d\n", getpid(), getppid(), pid);
	}
	else if(pid == 0) 
		printf("Child Process: \nPID: %d, Parent PID: %d\n", getpid(), getppid());
	else {
		printf("Error in Fork\n");
		exit(1);
	}
	printf("Both processes continue\n");
	exit(0);
}
