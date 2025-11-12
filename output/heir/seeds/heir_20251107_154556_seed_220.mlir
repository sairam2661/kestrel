"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (tensor<2x2xi32>, tensor<2xi32>) -> tensor<2xi32>, sym_name = "tensor_and_vector_mix"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "tensor.extract"(%arg0, %0, %0) : (tensor<2x2xi32>, index, index) -> i32
    %3 = "tensor.extract"(%arg0, %1, %1) : (tensor<2x2xi32>, index, index) -> i32
    %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "tensor.extract"(%arg1, %0) : (tensor<2xi32>, index) -> i32
    %6 = "arith.subi"(%4, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "arith.constant"() <{value = 0 : index}> : () -> index
    %8 = "arith.constant"() <{value = 1 : index}> : () -> index
    %9 = "tensor.insert"(%6, %arg1, %8) : (i32, tensor<2xi32>, index) -> tensor<2xi32>
    "func.return"(%9) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()