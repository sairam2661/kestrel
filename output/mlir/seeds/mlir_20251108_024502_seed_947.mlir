"builtin.module"() ({
  "func.func"() <{function_type = (vector<8xi32>, vector<8xi32>) -> vector<8xi32>, sym_name = "vector_add_cmp"}> ({
  ^bb0(%arg0: vector<8xi32>, %arg1: vector<8xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (vector<8xi32>, vector<8xi32>) -> vector<8xi32>
    %1 = "arith.cmpi"(%arg0, %arg1, "lt") : (vector<8xi32>, vector<8xi32>) -> vector<1xi1>
    %2 = "arith.select"(%1, %arg0, %arg1) : (vector<1xi1>, vector<8xi32>, vector<8xi32>) -> vector<8xi32>
    "func.return"(%2) : (vector<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()