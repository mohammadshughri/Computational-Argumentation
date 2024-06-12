#include <stdio.h>

enum vertex {
	BLACK,
	WHITE,
};

enum edge {
	SUPPORT,
	ATTACK,
};

void main(){
	enum vertex vs[3] = {WHITE, BLACK, BLACK};
	enum edge es[2] = {ATTACK, SUPPORT};

	for(int i= 0; i<sizeof(vs)/sizeof(vs[0]); i++){
		printf("$\\xi(v_%d) = \\xi(v_%d) =$ ", i+1, i+4);
		for(int j = 0; j<= i; j++){
			switch(vs[j]){
				case BLACK:
					printf("CON");
					break;
				case WHITE:
					printf("PRO");
					break;
			}
			if(j != i)
				printf(" - ");
		}
		printf(" $\\Rightarrow \\delta(\\xi(d_%d), \\xi(d_%d) = 1)$\n\n", i+1, i+4);
	}

	printf("$\\pi(v_1) = \\pi(v_4) = \\{\\} \\Rightarrow \\delta(\\pi(v_1, v_4)) = 1$\n\n");
	for(int i= 0; i<sizeof(es)/sizeof(es[0]); i++){
		printf("$\\pi(v_%d) = \\pi(v_%d) =$ ", i+2, i+5);
		for(int j = 0; j<= i; j++){
			switch(es[j]){
				case SUPPORT:
					printf("SUPPORT");
					break;
				case ATTACK:
					printf("ATTACK");
					break;
			}
			if(j != i)
				printf(" - ");
		}
		printf(" $\\Rightarrow \\delta(\\pi(d_%d), \\pi(d_%d) = 1)$\n\n", i+2, i+5);
	}
}
