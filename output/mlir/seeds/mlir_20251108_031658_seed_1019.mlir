"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xi32>, tensor<?xi32>) -> (tensor<?xi32>), sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: tensor<?xi32>, %arg1: tensor<?xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<?xi32>, tensor<?xi32>) -> tensor<?xi32>
    %1 = "arith.cmpi"(%0, %arg0, "eq") : (tensor<?xi32>, tensor<?xi32>) -> tensor<?xi1>
    %2 = "arith.constant"() {value = 42} : () -> i32
    %3 = "arith.addi"(%2, %2) : (i32, i32) -> i32
    %4 = "arith.cmpi"(%3, %2, "gt") : (i32, i32) -> i1
    %5 = "arith.cmpi"(%4, %4, "ne") : (i1, i1) -> i1
    "func.return"(%0, %5) : (tensor<?xi32>, i1) -> ()
  }) : () -> ()
}) : () -> ()