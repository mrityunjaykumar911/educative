//
// Created by mrityunjay kumar on 2020-05-31.
//

#include <iostream>

#include "../common_header/definitions.h"
#include "common.h"

int main(){
  char *one_person_name = new char[5];
  memset (one_person_name,'\0',5);
  sprintf (one_person_name,"%s","Ravi");
  auto one_human = new HumanBeing(one_person_name,4);
  std::cout << one_human->getName () << std::endl;
  
  delete one_human;
  
  return 0;
}