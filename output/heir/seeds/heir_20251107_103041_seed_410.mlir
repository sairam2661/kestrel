"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16xi32>, !secret_secret) -> i32, sym_name = "compute"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: !secret_secret):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "secret.reveal"(%arg1) : (!secret_secret) -> i32
    %3 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "scf.for"(%0, %0, %0, %3) ({
    ^bb0(%arg2: index, %arg3: i32):
      %5 = "tensor.extract"(%arg0, %arg2) : (tensor<16xi32>, index) -> i32
      %6 = "arith.addi"(%arg3, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%6) : (i32) -> ()
    }) {lower = 0 : i64, upper = 16 : i64} : (index, index, index, i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()