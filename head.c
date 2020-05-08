#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"


char buf[512];

void head(int fd, char *name, int x) {
  int n,line=0;
  int i;
  
  while((n = read(fd, buf, sizeof(buf))) > 0 && line<x) {
    for(i=0; i<=n && line<x; i++) {
      if(buf[i]!='\n') {
        printf(1,"%c",buf[i]);
      }
      else {
      	printf(1,"\n");
      	line++;
      }
    }
  }
  if(n<0) {
    printf(1, "HEAD: READ ERROR\n");
    exit();
  }
  //printf(1,"file : %s\n", name);
}

int main(int argc, char *argv[]) {
  int fd,i;
  
  if(argc <= 1) {
    printf(1,"Kurang Bro\n");
    exit();
  }

  else if(argc==2) {
    for(i = 1; i < argc; i++) {
        if((fd = open(argv[i], 0)) < 0) {
          printf(1, "HEAD : CAN'T OPEN %s\n", argv[i]);
          exit();
        }
        head(fd, argv[i], 10);
        close(fd);
    }
  }
  
  else if (argc==3){
    // int i, v = 0;
  
    // char *str = (char *)malloc(v);

    // for(i = 2; i < 3; i++) {
    //     str = (char *)realloc(str, (v + strlen(argv[2])));
    // }
    printf(1,"%s\n", argv[2]);
    if (strcmp(argv[1],"-v")==0){
	    for(i = 2; i < argc; i++) {
        if((fd = open(argv[i], 0)) < 0) {
          printf(1, "HEAD : CAN'T OPEN %s\n", argv[i]);
          exit();
        }
        head(fd, argv[i], 10);
        close(fd);
    	}
    }

  }

  else if(argc==4) {
    if (strcmp(argv[1],"-n")==0){
	    int x = atoi(argv[2]);
	    for(i = 3; i < argc; i++) {
        if((fd = open(argv[i], 0)) < 0) {
          printf(1, "HEAD : CAN'T OPEN %s\n", argv[i]);
          exit();
        }
        head(fd, argv[i], x);
        close(fd);
    	}
    } 
    
    else if (strcmp(argv[1],"-c") == 0){
	      printf(1,"belum bisa");
	  }

  else if (strcmp(argv[1],"-q") == 0){
	  for(i = 2; i <= argc; i++) {
      if((fd = open(argv[i], 0)) < 0) {
          printf(1, "HEAD : CAN'T OPEN %s\n", argv[i]);
          exit();
      }
      head(fd, argv[i], 10);
      printf(1,"\n");
      close(fd);
	  }
  }
}

  else {
      printf(1,"HEAD : SYNTAX ERROR\n");
      exit();
    }
  exit();
}
