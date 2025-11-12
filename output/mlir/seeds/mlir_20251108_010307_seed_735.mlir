"builtin.module"() ({
  "func.func"() <{
    function_type = (i32, vector<4xi8>) -> (i32, tensor<5x6x7xi16>),
    sym_name = "unusual_op_combinations"
  }> ({
    ^bb0(%arg0: i32, %arg1: vector<4xi8>):
      %cst_i32_1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %cst_tensor = "arith.constant"() <{value = dense<0> : tensor<5x6x7xi16>}> : () -> tensor<5x6x7xi16>
      %cmp_i32 = "arith.cmpi"(%arg0, %cst_i32_1) <{predicate = "sgt"}> : (i32, i32) -> i1
      %select = "arith.select"(%cmp_i32, %arg0, %cst_i32_1) : (i1, i32, i32) -> i32
      %add_vec = "arith.addf"(%arg1, %arg1) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
      "func.return"(%select, %cst_tensor) : (i32, tensor<5x6x7xi16>) -> ()
  }) : () -> ()
}) : () -> ()