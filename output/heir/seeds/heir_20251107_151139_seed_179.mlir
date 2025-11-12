"builtin.module"() ({
  "func.func"() <{arg_attrs = [{tfhe_rust.tfhe_rust}, {tfhe_rust.tfhe_rust}], function_type = (i32, i32) -> (i32, i32), sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %1 = "arith.muli"(%0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.select"(%arg0, %1, %arg1) : (i32, i32, i32) -> i32
    %3 = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i32) -> i1
    %4 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith_fastmathnone}> : (i32, i32) -> f32
    %5 = "tfhe_rust.encrypt"(%arg0) : (i32) -> !tfhe_rust encrypted
    .InteropServices
    %6 : i32
  }) : () -> ()
}) : () -> ()