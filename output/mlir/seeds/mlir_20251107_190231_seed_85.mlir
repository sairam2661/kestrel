"builtin.module"() ({
  "func.func"() <{function_type = (index, vector<4xi32>) -> (index, vector<4xi32>), sym_name = "vector_arithmetic"}> ({
  ^bb0(%arg0: index, %arg1: vector<4xi32>):
    %0 = "arith.addi"(%arg0, %arg0) : (index, index) -> index
    %1 = "arith.const"() <{value = 4 : index}> : () -> index
    %2 = "arith.subi"(%0, %1) : (index, index) -> index
    %3 = "vector.constant"() <{value = dense<0> : vector<4xi32>}> : () -> vector<4xi32>
    %4 = "arith.addi"(%2, %2) : (index, index) -> index
    %5 = "vector.add"(%arg1, %3) : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    "func.return"(%4, %5) : (index, vector<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()