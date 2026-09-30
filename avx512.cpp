// コンパイルするときは
// -O3 -mavx512f
#include <iostream>
#include <stdint.h>

int main(){
  int64_t a[8];
  int64_t b[8];
  int64_t c[8];
  for(int i=0;i<8;i++){
    std::cin>>a[i];
    std::cin>>b[i];
  }
  for(int i=0;i<8;i++){
    c[i]=a[i]+b[i];
  }
  for(int i=0;i<8;i++){
    std::cout<<c[i]<<" ";
  }


  return 0;
}
