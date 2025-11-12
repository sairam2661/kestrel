"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x1024xi32>, tensor<2x1024xi32>) -> tensor<2x1024xi32>, sym_name = "stress_add_cmp"}> ({
  ^bb0(%arg0: tensor<2x1024xi32>, %arg1: tensor<2x1024xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<2x1024xi32>, tensor<2x1024xi32>) -> tensor<2x1024xi32>
    %1 = "arith.cmpi"(%arg0, %arg1, "gt") : (tensor<2x1024xi32>, tensor<2x1024xi32>) -> tensor<2x1024xi1>
    %2 = "arith.cmpi"(%0, %arg1, "lt") : (tensor<2x1024xi32>, tensor<2x1024xi32>) -> tensor<2x1024xi1>
    %3 = "arith.addi"(%arg0, %0) : (tensor<2x1024xi32>, tensor<2x1024xi32>) -> tensor<2x1024xi32>
    "func.return"(%3) : (tensor<2x1024xi32>) -> ()
  }) : () -> ()
}) : () -> ()