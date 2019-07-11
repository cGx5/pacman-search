#ifndef search_h
#define search_h

typedef struct result {
    int *fa;
    char *dir;
    int *dis;
    int pos;
} result;

result bfs(graph *g, int src, int flag);

void print(int fa[], char dir[], int u);

#endif
