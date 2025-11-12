"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "test_tensor_ops"}> ({
  ^bb0(%arg0: tensor<2x2xi32>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %1 = "arith.addi"(%arg0, %0) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    %2 = "arith.cmpi"(%arg0, %1, "slt") : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi1>
    %3 = "arith.constant"() <{value = dense<2> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %4 = "arith.subi"(%arg0, %3) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    "func.return"(%4) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> i32, sym_name = "test_scalar_ops"}> ({
  ^bb0(%arg1: i32):
    %5 = "arith.constant"() <{value = -1 : i32}> : () -> i32
    %6 = "arith.addi"(%arg1, %5) : (i32, i32) -> i32
    %7 = "arith.subi"(%arg1, %5) : (i32, i32) -> i32
    %8 = "arith.muli"(%arg1, %7) : (i32, i32) -> i32
    "func.return"(%8) : (i32) -> ()
  }) : () -> ()
}) : () -> ()