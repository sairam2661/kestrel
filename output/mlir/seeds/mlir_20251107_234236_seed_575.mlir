"builtin.module"() ({
  "func.func"() <{function_type = (vector<4xi32>) -> vector<4xi32>, sym_name = "vec_op_test"}> ({
    ^bb0(%arg0: vector<4xi32>):
      %0 = "arith.constant"() <{value = dense<10> : vector<4xi32>}> : () -> vector<4xi32>
      %1 = "arith.addi"(%arg0, %0) : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
      %2 = "arith.constant"() <{value = dense<20> : vector<4xi32>}> : () -> vector<4xi32>
      %3 = "arith.subi"(%1, %2) : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
      "func.return"(%3) : (vector<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()