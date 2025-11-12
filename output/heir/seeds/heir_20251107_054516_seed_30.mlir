"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}], function_type = (i32, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_rotator_mixer"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 2 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "tensor_ext.rotate"(%arg1, %0, %1) : (tensor<4xi32>, index, i32) -> tensor<4xi32>
    %3 = "arith.constant"() <{value = 1 : index}> : () -> index
    %4 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %5 = "tensor_ext.rotate"(%2, %3, %4) : (tensor<4xi32>, index, i32) -> tensor<4xi32>
    %6 = "arith.constant"() <{value = 0 : index}> : () -> index
    %7 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %8 = "tensor_ext.rotate"(%5, %6, %7) : (tensor<4xi32>, index, i32) -> tensor<4xi32>
    %9 = "secret.generic"() ({
      ^bb1(%arg2: i32):
        %10 = "arith.addi"(%arg0, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "secret.yield"(%10) : (i32) -> ()
    }) : (i32) -> i32
    %11 = "tensor.extract"(%8, %0) : (tensor<4xi32>, index) -> i32
    %12 = "arith.addi"(%11, %9) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %13 = "tensor.insert"(%12, %8, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%13) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()