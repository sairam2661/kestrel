"builtin.module"() ({
  "func.func"() <{function_type = (vector<16xi8>, vector<16xi8>) -> vector<16xi8>, sym_name = "vector_add_unusual"}> ({
  ^bb0(%arg0: vector<16xi8>, %arg1: vector<16xi8>):
    %0 = "arith.constant"() <{value = 1 : i8}> : () -> i8
    %1 = "vector.insertelement"(%arg0, %0, %0) : (vector<16xi8>, i8, i8) -> vector<16xi8>
    %2 = "vector.insertelement"(%arg1, %0, %0) : (vector<16xi8>, i8, i8) -> vector<16xi8>
    %3 = "arith.addi"(%1, %2) : (vector<16xi8>, vector<16xi8>) -> vector<16xi8>
    "func.return"(%3) : (vector<16xi8>) -> ()
  }) : () -> ()
}) : () -> ()