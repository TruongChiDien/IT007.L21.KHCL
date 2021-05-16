#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>

int loop = 1;

void on_sigint(){
	printf("\nYou are pressed CTRL+C! Good bye!\n");
	loop = 0;
}	

int main(){
	printf("Welcome to IT007, I am 19520464!\n");
	pid_t pid = fork();
	if (pid == 0)
		execl("/usr/bin/gedit", "gedit", "abcd.txt", NULL);
	else {
		signal(SIGINT, on_sigint);
		while(loop){}
	}
	return 0;
}
