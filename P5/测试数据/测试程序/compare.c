//before using we should redirct the output.
//Firstly, use fopen to define a path to output.
// for example: dest=$fopen("text1.txt","r");
//Then, change the system task from $display to $fdisplay.
// for example: $fdisplay("***",dest);
//  
#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#include<math.h>
#include<time.h>
char output1 [500][100];
char output2 [500][100];
int main()
{
	FILE * text1;
	FILE * text2; 
	text1 = fopen("myout.txt","r");
	text2 = fopen("stdout.txt","r");
	int i=0;
	while(fgets(output1[i],50,text1)!=NULL){
		if(output1[i]=="\0") break;
		fgets(output2[i],50,text2);
		if(strcmp(output1[i],output2[i])!=0){
			printf("Difference: \n");
			printf("%s\n",output1[i]);
			printf("%s\n",output2[i]);
		}
	}
 return 0;
}

