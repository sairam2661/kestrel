"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret, !secret_secret) -> !secret_secret, sym_name = "complex_secret_op"}> ({
  ^bb0(%arg0: !secret_secret, %arg1: !secret_secret):
    "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: !secret_secret, %arg3: !secret_secret):
      %0 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflow_none}> : (!secret_secret, !secret_secret) -> !secret_secret
      %1 = "arith.muli"(%0, %0) <{overflowFlags = #arith_overflow_none}> : (!secret_secret, !secret_secret) -> !secret_secret
      "secret.yield"(%1) : (!secret_secret) -> ()
    }) : (!secret_secret, !secret_secret) -> !secret_secret
    "func.return"(%0) : (!secret_secret) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_op_complex"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "tensor_ext.rotate"(%arg0, %0) : (tensor<4xi32>, index) -> tensor<4xi32>
    %2 = "arith.addi"(%1, %arg1) <{overflowFlags = #arith_overflow_none}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %3 = "tensor_ext.rotate"(%2, %0) : (tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%3) : (tensor<4xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "control_flow_complex"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i32) -> i1
    "scf.if"(%0) ({
    ^bb1:
      %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      "scf.yield"(%1) : (i32) -> ()
    }) : (i1) -> (i32)
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()