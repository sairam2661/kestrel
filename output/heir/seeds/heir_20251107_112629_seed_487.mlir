"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}], function_type = (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>, sym_name = "tensor_mixed_op"}> ({
  ^bb0(%arg0: tensor<3xi32>, %arg1: tensor<3xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "tensor.extract"(%arg0, %0) : (tensor<3xi32>, index) -> i32
    %2 = "tensor.extract"(%arg1, %0) : (tensor<3xi32>, index) -> i32
    %3 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflowFlagss}> : (i32, i32) -> i32
    %4 = "tensor.insert"(%3, %arg0, %0) : (i32, tensor<3xi32>, index) -> tensor<3xi32>
    %5 = "arith.constant"() <{value = 1 : index}> : () -> index
    %6 = "tensor.extract"(%4, %5) : (tensor<3xi32>, index) -> i32
    %7 = "tensor.extract"(%arg1, %5) : (tensor<3xi32>, index) -> i32
    %8 = "arith.muli"(%6, %7) <{overflowFlags = #arith_overflowFlagss}> : (i32, i32) -> i32
    %9 = "tensor.insert"(%8, %4, %5) : (i32, tensor<3xi32>, index) -> tensor<3xi32>
    %10 = "arith.constant"() <{value = 2 : index}> : () -> index
    %11 = "tensor.extract"(%9, %10) : (tensor<3xi32>, index) -> i32
    %12 = "tensor.extract"(%arg1, %10) : (tensor<3xi32>, index) -> i32
    %13 = "arith.subi"(%11, %12) <{overflowFlags = #arith_overflowFlagss}> : (i32, i32) -> i32
    %14 = "tensor.insert"(%13, %9, %10) : (i32, tensor<3xi32>, index) -> tensor<3xi32>
    "func.return"(%14) : (tensor<3xi32>) -> ()
  }) : () -> ()
}) : () -> ()