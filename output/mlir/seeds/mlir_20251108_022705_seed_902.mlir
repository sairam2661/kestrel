"builtin.module"() ({
  "func.func"() <{function_type = (vector<10xi8>, vector<10xi8>) -> vector<10xi8>, sym_name = "vector_add_with_carry"}> ({
  ^bb0(%arg0: vector<10xi8>, %arg1: vector<10xi8>):
    %0 = "arith.addi"(%arg0, %arg1) : (vector<10xi8>, vector<10xi8>) -> vector<10xi8>
    %1 = "arith.cmpi"(%arg0, %arg1, "slt") : (vector<10xi8>, vector<10xi8>) -> vector<10xi1>
    %2 = "arith.addi"(%0, %1) : (vector<10xi8>, vector<10xi8>) -> vector<10xi8>
    "func.return"(%2) : (vector<10xi8>) -> ()
  }) : () -> ()
}) : () -> ()