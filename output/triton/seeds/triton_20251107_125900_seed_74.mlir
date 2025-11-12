"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.cmpi"(%arg0, %arg1, "eq") : (i32, i32) -> i1
    %2 = "arith.constant"() <{value = 20 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = dense<30> : tensor<1x32xi32>}> : () -> tensor<1x32xi32>
    %4 = "tt.make_range"() <{start = 0 : i32, end = 10 : i32}> : () -> tensor<10xi32>
    %5 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflow_mode_none}> : (i32, i32) -> i32
    %6 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
    %7 = "arith.select"(%1, %5, %6) : (i1, i32, i32) -> i32
    "tt.return"(%7) : (i32) -> ()
  }) : () -> ()
}) : () -> ()