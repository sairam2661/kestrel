"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>, sym_name = "tensor_add"}> ({
  ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<2xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "tensor.extract"(%arg0, %0) : (tensor<2xi32>, index) -> i32
    %3 = "tensor.extract"(%arg0, %1) : (tensor<2xi32>, index) -> i32
    %4 = "tensor.extract"(%arg1, %0) : (tensor<2xi32>, index) -> i32
    %5 = "tensor.extract"(%arg1, %1) : (tensor<2xi32>, index) -> i32
    %6 = "arith.addi"(%2, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "arith.addi"(%3, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %8 = "tensor.insert"(%6, %arg0, %0) : (i32, tensor<2xi32>, index) -> tensor<2xi32>
    %9 = "tensor.insert"(%7, %8, %1) : (i32, tensor<2xi32>, index) -> tensor<2xi32>
    "func.return"(%9) : (tensor<2xi32>) -> ()
  }) : () -> ()
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (tensor<2xi32>) -> tensor<2xi32>, sym_name = "tensor_negate"}> ({
  ^bb0(%arg0: tensor<2xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "tensor.extract"(%arg0, %0) : (tensor<2xi32>, index) -> i32
    %3 = "tensor.extract"(%arg0, %1) : (tensor<2xi32>, index) -> i32
    %4 = "arith.negi"(%2) : (i32) -> i32
    %5 = "arith.negi"(%3) : (i32) -> i32
    %6 = "tensor.insert"(%4, %arg0, %0) : (i32, tensor<2xi32>, index) -> tensor<2xi32>
    %7 = "tensor.insert"(%5, %6, %1) : (i32, tensor<2xi32>, index) -> tensor<2xi32>
    "func.return"(%7) : (tensor<2xi32>) -> ()
  }) : () -> ()
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>, sym_name = "tensor_subtract"}> ({
  ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<2xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "tensor.extract"(%arg0, %0) : (tensor<2xi32>, index) -> i32
    %3 = "tensor.extract"(%arg0, %1) : (tensor<2xi32>, index) -> i32
    %4 = "tensor.extract"(%arg1, %0) : (tensor<2xi32>, index) -> i32
    %5 = "tensor.extract"(%arg1, %1) : (tensor<2xi32>, index) -> i32
    %6 = "arith.subi"(%2, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "arith.subi"(%3, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %8 = "tensor.insert"(%6, %arg0, %0) : (i32, tensor<2xi32>, index) -> tensor<2xi32>
    %9 = "tensor.insert"(%7, %8, %1) : (i32, tensor<2xi32>, index) -> tensor<2xi32>
    "func.return"(%9) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()