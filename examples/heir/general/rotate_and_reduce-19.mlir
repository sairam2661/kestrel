"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<tensor<4xi16>>) -> !secret.secret<i16>, sym_name = "rotate_not_applied_because_rotation_duplicated"}> ({
  ^bb0(%arg0: !secret.secret<tensor<4xi16>>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "secret.generic"(%arg0) ({
    ^bb0(%arg1: tensor<4xi16>):
      %3 = "tensor_ext.rotate"(%arg1, %0) : (tensor<4xi16>, index) -> tensor<4xi16>
      %4 = "arith.addi"(%3, %arg1) <{overflowFlags = #arith.overflow<none>}> : (tensor<4xi16>, tensor<4xi16>) -> tensor<4xi16>
      %5 = "tensor_ext.rotate"(%3, %0) : (tensor<4xi16>, index) -> tensor<4xi16>
      %6 = "arith.addi"(%4, %5) <{overflowFlags = #arith.overflow<none>}> : (tensor<4xi16>, tensor<4xi16>) -> tensor<4xi16>
      %7 = "arith.addi"(%6, %5) <{overflowFlags = #arith.overflow<none>}> : (tensor<4xi16>, tensor<4xi16>) -> tensor<4xi16>
      %8 = "tensor_ext.rotate"(%5, %0) : (tensor<4xi16>, index) -> tensor<4xi16>
      %9 = "arith.addi"(%7, %8) <{overflowFlags = #arith.overflow<none>}> : (tensor<4xi16>, tensor<4xi16>) -> tensor<4xi16>
      %10 = "tensor.extract"(%9, %0) : (tensor<4xi16>, index) -> i16
      "secret.yield"(%10) : (i16) -> ()
    }) : (!secret.secret<tensor<4xi16>>) -> !secret.secret<i16>
    "func.return"(%2) : (!secret.secret<i16>) -> ()
  }) : () -> ()
}) : () -> ()

