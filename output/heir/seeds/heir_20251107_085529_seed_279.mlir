"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>, sym_name = "tensor_select"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: tensor<4xi8>):
    %0 = "arith.constant"() <{value = 2 : index}> : () -> index
    %1 = "tensor.extract"(%arg0, %0) : (tensor<4xi8>, index) -> i8
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index
    %3 = "tensor.extract"(%arg1, %2) : (tensor<4xi8>, index) -> i8
    %4 = "arith.constant"() <{value = 1 : i1}> : () -> i1
    %5 = "arith.select"(%4, %1, %3) : (i1, i8, i8) -> i8
    %6 = "tensor.insert"(%5, %arg0, %0) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
    "func.return"(%6) : (tensor<4xi8>) -> ()
  }) : () -> ()
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (tensor<4xi8>) -> tensor<4xi8>, sym_name = "secret_tensor_op"}> ({
  ^bb0(%arg0: tensor<4xi8>):
    %0 = "secret.generic"(%arg0) ({
    ^bb0(%arg1: tensor<4xi8>):
      %1 = "arith.constant"() <{value = 1 : index}> : () -> index
      %2 = "tensor.extract"(%arg1, %1) : (tensor<4xi8>, index) -> i8
      %3 = "arith.addi"(%2, %2) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
      %4 = "tensor.insert"(%3, %arg1, %1) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
      "secret.yield"(%4) : (tensor<4xi8>) -> ()
    }) : (tensor<4xi8>) -> tensor<4xi8>
    "func.return"(%0) : (tensor<4xi8>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "add_with_cond"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %1 = "arith.cmpi"(%arg0, %arg1, "gt") : (i32, i32) -> i1
    %2 = "arith.select"(%1, %0, %arg0) : (i1, i32, i32) -> i32
    "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()