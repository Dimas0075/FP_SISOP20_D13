#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"
#include "fs.h"

void rm(char *s) {
	unlink(s);
}
void rm_all(char *path){
    char buf[512],*p;
    int fd;
    struct dirent de;
    struct stat st;

	printf(1,"path : %s\n",path);
	if((fd = open(path, 0)) < 0){
		printf(2, "ls: cannot open %s\n", path);
		return;
	}

	if(fstat(fd, &st) < 0){
		printf(2, "ls: cannot stat %s\n", path);
		close(fd);
		return;
	}


	strcpy(buf, path);
    p = buf+strlen(buf);
    *p++ = '/';

    while (read(fd,&de,sizeof(de))==sizeof(de))
    {
        if(de.inum == 0 || !strcmp(de.name, ".") || !strcmp(de.name, ".."))
					continue;

		memmove(p,de.name,DIRSIZ);
		
		if(stat(buf, &st) < 0)
			continue;
      	
		switch (st.type)
		{
			case T_FILE:
				rm(p);
				break;
			
			case T_DIR:
				printf(1,"rm : cannot remove '%s' : Is a directory\n",p);
				break;

		}
		
    }
	close(fd);
    

}


void rm_recurse(char *dir) {
	int fd,a;
	char buf[512], *p;
	struct dirent de;
	struct stat st;

	fd = open(dir, O_RDONLY);
	a=1;

	fstat(fd, &st);

	if(st.type == T_DIR){
		rm(dir);
	}else {

	}


	switch (st.type) {
	
		case T_FILE:
			printf(1,"rm : cannot remove '%s' : Is a file \n",dir);
			a=0;
			break;
			exit();
		case T_DIR:
			strcpy(buf, dir);
			p = buf+strlen(buf);
			*p = '/';
			p++;

			while(read(fd, &de, sizeof(de)) == sizeof(de)) {
				if(de.inum == 0 || !strcmp(de.name, ".") || !strcmp(de.name, ".."))
					continue;
      
				memmove(p, de.name, strlen(de.name));
				p[strlen(de.name)] = 0;
    
				fstat(open(buf, O_RDONLY), &st);
				if (st.type == T_FILE){
					rm(buf);
					
				}
				else if (st.type == T_DIR){
					rm_recurse(buf);
					
				}
			}
	
			break;
	}
	if(a==1){
		rm(dir);
	}
	close(fd);
} 


void rm_file(char *path, char* file){
    char buf[512],*p;
    int fd;
    struct dirent de;
    struct stat st;

	if((fd = open(path, 0)) < 0){
		printf(2, "ls: cannot open %s\n", path);
		return;
	}

	if(fstat(fd, &st) < 0){
		printf(2, "ls: cannot stat %s\n", path);
		close(fd);
		return;
	}

	strcpy(buf, path);
    p = buf+strlen(buf);
    *p++ = '/';

    while (read(fd,&de,sizeof(de))==sizeof(de))
    {
        if(de.inum == 0 || !strcmp(de.name, ".") || !strcmp(de.name, ".."))
					continue;
		memmove(p,de.name,DIRSIZ);
	
		if(stat(buf, &st) < 0)
			continue;
      	
		if(strcmp(de.name,file)==0){

		switch (st.type)
		{
			case T_FILE:
				rm(p);
				break;
			
			case T_DIR:
				printf(1,"Cannot remove %s , it's not a file \n",file);
				break;

			
		}
		}
		
    }
    

}
void rm_help(){
	printf(1,"\nUsage:\n");
    printf(1,"rm [filename] => to remove file\n\n");
    printf(1,"rm [OPTION] [directory name] => tor remove directory\n\n");
    printf(1,"Options:\n");
    printf(1,"-r : opsi rekursif, menghapus directory berdasarkan kontennya\n\n");
    printf(1," * : menghapus semua isi file atau directory pada sebuah directory\n\n");
    printf(1,"--help : Memperlihatkan bantuan lalu exit\n\n");
    exit();
}


int main(int argc, char *argv[])
{
	int i;

	if(argc < 2){
		printf(2, "Error : insert 'rm --help' to help you\n");
		exit();
	}

	if (!strcmp(argv[1], "-r")) {

		for (i = 2; i < argc; i++) {
			rm_recurse(argv[2]);
		}

	}
	else if(!strcmp(argv[1], "*")){
		rm_all(".");
    }
	else if(!strcmp(argv[1], "--help")){
		rm_help();
	}
	else {
		for(i = 1; i < argc; i++){
			rm_file(".",argv[i]);
		}
	}

	exit();
}