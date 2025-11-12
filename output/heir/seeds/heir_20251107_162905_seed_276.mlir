"builtin.module"() ({
  "func.func"() <{function_type = (!secret
  , i32) -> !secret, sym_name = "fuzz_tensor_ops"}> ({
    ^bb0(%arg0: !secret, %arg1: i32):
      %0 = "secret.generic"(%arg0, %arg1) ({
        ^bb0(%arg2: i32, %arg3: tensor<1024xi16>):
          %1 = "tensor.extract"(%arg3, %arg1) : (tensor<1024xi16>, i32) -> i16
          %2 = "arith.muli"(%1, %1) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
          %3 = "tensor_ext.rotate"(%arg3, %arg1) : (tensor<1024xi16>, i32) -> tensor<1024xi16>
          %4 = "arith.addi"(%2, %arg1) <{overflowFlags = #arith_overflownone}> : (i16, i32) -> i32
          "secret.yield"(%4) : (i32) -> ()
      }) : (!secret, i32) -> !secret
      "func.return"(%0) : (!secret) -> ()
  }) : () -> ()
}) : () -> ()