"builtin.module"() ({
  "func.func"() <{function_type = (i32, i8) -> (i32, i32), sym_name = "complex_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: i8):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 255 : i8}> : () -> i8
    %2 = "tosa.const"() <{value = dense<17> : tensor<1xi32>}> : () -> tensor<1xi32>
    %3 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow}>: (i32, i32) -> i32
    %4 = "arith.muli"(%3, %3) <{overflowFlags = #arith_overflow}>: (i32, i32) -> i32
    %5 = "scf.if"(%1) ({
      ^bb1:
        %6 = "arith.addi"(%arg0, %4) <{overflowFlags = #arith_overflow}>: (i32, i32) -> i32
        "scf.yield"(%6) : (i32) -> i32
    }, {
      ^bb2:
        %7 = "arith.subi"(%arg0, %4) <{overflowFlags = #arith_overflow}>: (i32, i32) -> i32
        "scf.yield"(%7) : (i32) -> i32
    }) : (i32) -> i32
    %8 = "arith.addi"(%5, %3) <{overflowFlags = #arith_overflow}>: (i32, i32) -> i32
    "func.return"(%3, %8) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()