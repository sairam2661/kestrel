"builtin.module"() ({
  "func.func"() <{function_type = (vector<4xi32>, vector<4xi32>) -> vector<4xi32>, sym_name = "vector_arithmetic"}> ({
  ^bb0(%arg0: vector<4xi32>, %arg1: vector<4xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %1 = "arith.subi"(%arg0, %arg1) : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %2 = "arith.muli"(%arg0, %arg1) : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %3 = "arith.divsi"(%0, %1) <{overflowFlags = #arithOverflowSignedHandlingStrategy} >: (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    "func.return"(%3) : (vector<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()