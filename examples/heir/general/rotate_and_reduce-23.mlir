"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<tensor<8xi16>>, !secret.secret<tensor<8xi16>>) -> !secret.secret<i16>, sym_name = "test_dot_product_regression"}> ({
  ^bb0(%arg0: !secret.secret<tensor<8xi16>>, %arg1: !secret.secret<tensor<8xi16>>):
    %0 = "arith.constant"() <{value = 3 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 0 : index}> : () -> index
    %4 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: tensor<8xi16>, %arg3: tensor<8xi16>):
      %5 = "arith.muli"(%arg2, %arg3) <{overflowFlags = #arith.overflow<none>}> : (tensor<8xi16>, tensor<8xi16>) -> tensor<8xi16>
      %6 = "tensor_ext.rotate"(%5, %2) : (tensor<8xi16>, index) -> tensor<8xi16>
      %7 = "arith.addi"(%6, %5) <{overflowFlags = #arith.overflow<none>}> : (tensor<8xi16>, tensor<8xi16>) -> tensor<8xi16>
      %8 = "tensor_ext.rotate"(%5, %1) : (tensor<8xi16>, index) -> tensor<8xi16>
      %9 = "arith.addi"(%8, %7) <{overflowFlags = #arith.overflow<none>}> : (tensor<8xi16>, tensor<8xi16>) -> tensor<8xi16>
      %10 = "tensor_ext.rotate"(%5, %0) : (tensor<8xi16>, index) -> tensor<8xi16>
      %11 = "arith.addi"(%10, %9) <{overflowFlags = #arith.overflow<none>}> : (tensor<8xi16>, tensor<8xi16>) -> tensor<8xi16>
      %12 = "tensor.extract"(%11, %3) : (tensor<8xi16>, index) -> i16
      "secret.yield"(%12) : (i16) -> ()
    }) : (!secret.secret<tensor<8xi16>>, !secret.secret<tensor<8xi16>>) -> !secret.secret<i16>
    "func.return"(%4) : (!secret.secret<i16>) -> ()
  }) : () -> ()
}) : () -> ()

