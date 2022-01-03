/**
  * filename: tutorial.c
  * overview: BDD tutorial
  * author: Summer Sue
  * source from: https://blog.csdn.net/m0_38013741/article/details/115803381
  * date: 2021,10,29
  */

#include <iostream>
#include <fstream>
#include <cstdio>
#include <cstring>
#include <ctime>
#include <cmath>
#include <cstdlib>
#include "cudd.h"

using namespace std;
/**
 * Pring a dd summary
 * pr = 0: prints nothing
 * pr = 1: prints counts of nodes and minterms
 * pr = 2: prints counts + disjoint sum of product
 * pr = 3: prints counts + list of nodes
 * pr > 3: prints counts + disjoint sum of product + list of nodes
 * @param the dd node
 */

// 打印dd图信息
void print_dd(DdManager* gbm, DdNode* dd, int n, int pr)
{
  cout << "DdManager nodes: %ld | " << Cudd_ReadNodeCount(gbm); // Reports the number of live nodes in BDDs and ADDs.
  cout << "DdManager vars: %d | " << Cudd_ReadSize(gbm); // Returns the number of BDD variables in existence.
  cout << "DdManager reorderings: %d | " << Cudd_ReadReorderings(gbm); // Returns the number of times reordering has occurred.
  cout << "DdManager memory: %ld | " << Cudd_ReadMemoryInUse(gbm) << endl; // Returns the memory in use by the manager measured in bytes.
  Cudd_PrintDebug(gbm, dd, n, pr); // Prints to the standard output a DD and its statistics: number of nodes, number of leaves, number of minterms.
}

// 将dd图存储为dot文件
void write_dd(DdManager* gbm, DdNode* dd, char* filename)
{
  //ofstream outfile(filename, ios::out); // output file pointer for .dot file
  //if(!outfile) {
  //  cout << "error opening output file." << endl;
  //}
  FILE* outfile; // output file pointer for .dot file
  outfile = fopen(filename, "w");
  DdNode** ddnodearry = (DdNode**) malloc(sizeof(DdNode*)); // initialize the function array
  ddnodearry[0] = dd;
  Cudd_DumpDot(gbm, 1, ddnodearry, NULL, NULL, outfile); // dump the function to .dot file
  free(ddnodearry);
  fclose(outfile); // close the file */
  //outfile.close(); // close the file
}

// 将dot文件转换成png文件
int toPNG(bool nBool)
{
  if(!nBool)
    return -1;
  system("dot -Tpng graph.dot -o 1.png");  
  cout << "转换完成！" << endl;
  return 0;
}

int main(int argc, char * argv[])
{
  char filename[30];
  DdManager* gbm; // Global BDD manager.
  gbm = Cudd_Init(0, 0, CUDD_UNIQUE_SLOTS, CUDD_CACHE_SLOTS, 0); // Initialize a new BDD manager.
  DdNode* bdd, * var, * tmp_neg, * tmp;
  int i;

  // // start: ADD构建 f(x) = 5 x1 x2 x3 x4
  // bdd = Cudd_addConst(gbm, 5);
  // Cudd_Ref(bdd);
  // for(i=3; i >= 0; i--) {
  //   var = Cudd_addIthVar(gbm, i);
  //   Cudd_Ref(var);
  //   tmp = Cudd_addApply(gbm, Cudd_addTimes, var, bdd); // 对var与bdd进行乘法操作
  //   Cudd_Ref(tmp);
  //   Cudd_RecursiveDeref(gbm, bdd);
  //   Cudd_RecursiveDeref(gbm, var);
  //   bdd = tmp;
  // }
  // //end: add构建

  // start:BDD主要构建过程 选此请注释上面add构建代码  f(x) =  x1 + x2 + x3 + x4   
  bdd = Cudd_ReadOne(gbm);  /* 创建一个常量1的节点*/
  Cudd_Ref(bdd); 
  for (i = 3; i >= 0; i--) {
      var = Cudd_bddIthVar(gbm, i); /* 创建一个BDD变量 */
      tmp_neg = Cudd_Not(var); /*执行NOT Boolean */
      tmp = Cudd_bddAnd(gbm, bdd, tmp_neg); /*执行加法运算 */
      Cudd_Ref(tmp);     //计数
      Cudd_RecursiveDeref(gbm, bdd);  //释放bdd空间
      bdd = tmp;
  }
  bdd = Cudd_BddToAdd(gbm, bdd); /*Convert BDD to ADD for display purpose*/
  //end: obdd主要构建过程

  print_dd(gbm, bdd, 2, 4);
  write_dd(gbm, bdd, "./graph.dot");
  toPNG(1);
  Cudd_Quit(gbm);

  return 0;
}