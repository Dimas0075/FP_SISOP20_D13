#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"
#include "fs.h"

#define NULL ((void*)0)
#define PATH_SEPARATOR "/"

static int getcwd(char* resulPth);
static char* goUp(int ino,char* aPath,char* resultPth);
static int dirlookup(int fd, int ino, char* p);

static int getcwd(char* resultPth){
    resultPth[0]='\0';

    char aPath[512];
    strcpy(aPath,".");

    struct stat st;
    if(stat(aPath,&st)<0)
        return 0;
    
    char* p=goUp(st.ino,aPath,resultPth);
    if(p==NULL)
        return 0;
    if(resultPth[0]=='\0')
        strcpy(resultPth,PATH_SEPARATOR);
    return 1;
    
}

static char* goUp(int ino,char* aPath,char* resultPth){
    strcpy(aPath + strlen(aPath),PATH_SEPARATOR "..");
    struct stat st;
    if(stat(aPath,&st)<0)
        return NULL;
    if(st.ino ==ino){
        return resultPth;
    }

    char* foundPath = NULL;
    int fd = open(aPath,O_RDONLY);
    if(fd>=0){
        char* p =goUp(st.ino,aPath,resultPth);
        if(p !=NULL){
            strcpy(p,PATH_SEPARATOR);
            p += sizeof(PATH_SEPARATOR) -1;

            if(dirlookup(fd,ino,p))
                foundPath = p +strlen(p);
        }
        close(fd);
    }

    return foundPath;
}

static int dirlookup(int fd,int ino, char* p){
    struct dirent de;
    while (read(fd,&de,sizeof(de))==sizeof(de)){
        if(de.inum == 0)
            continue;
        
        if(de.inum == ino){
            memmove(p,de.name,DIRSIZ);
            p[DIRSIZ]='\0';
            return 1;
        }
    }
    return 0;
}

int main(int argc, char* argv[]){
    char resultPath[512];
    if(getcwd(resultPath)){
        printf(1,"%s\n",resultPath);
    }
    else
    {
        printf(2,"pwd failed");       
    }
    exit();
    
}