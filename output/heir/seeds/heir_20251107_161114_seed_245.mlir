"builtin.module"() ({
  "func.func"() <{function_type = (!secret, !tensor, !tfhe_rust, !scf, !arith) -> (!secret, !tensor, !tfhe_rust, !scf, !arith), sym_name = "mixed_secret_tensor_tfhe_scf_arith"}> ({
  ^bb0(%arg0: !secret, %arg1: !tensor, %arg2: !tfhe_rust, %arg3: !scf, %arg4: !arith):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "tfhe_rust.encrypt"(%arg2, %0) : (!tfhe_rust, i32) -> !tfhe_rust
    %2 = "tensor_ext.rotate"(%arg1, %0) : (!tensor, i32) -> !tensor
    %3 = "secret.generic"(%arg0) ({
    ^bb0(%arg5: i16):
      %4 = "arith.addi"(%arg5, %0) : (i16, i32) -> i16
      "secret.yield"(%4) : (i16) -> ()
    }) : (!secret) -> !secret
    %5 = "scf.for"(%0) <{lowerBound = 0 : i32, upperBound = 10 : i32, step = 1 : i32}> ({
    ^bb0(%iv: i32):
      %6 = "arith.addi"(%iv, %0) : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) : (i32) -> ()
    %7 = "arith.select"(%arg4, %1, %3) : (i32, !tfhe_rust, !secret) -> !tfhe_rust
    "func.return"(%7, %2, %5, %3, %0) : (!tfhe_rust, !tensor, !scf, !secret, !arith) -> ()
  }) : () -> ()
}) : () -> ()