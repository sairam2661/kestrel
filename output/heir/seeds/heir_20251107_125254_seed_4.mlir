"builtin.module"() ({
  "func.func"() <{function_type = (!secret
    , i32) -> i32, sym_name = "complex_secret_arith"}> ({
    ^bb0(%arg0: !secret, %arg1: i32):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.addi"(%arg1, %0) <{overflowFlags = #arith
    , overflowFlags = #arith}> : (i32, i32) -> i32
      %2 = "scf.if"(%1) ({
        ^bb1(%arg2: i32):
          %3 = "arith.muli"(%arg2, %arg2) <{overflowFlags = #arith
        , overflowFlags = #arith}> : (i32, i32) -> i32
          %4 = "arith.subi"(%3, %0) <{overflowFlags = #arith
        , overflowFlags = #arith}> : (i32, i32) -> i32
          "scf.yield"(%4) : (i32) -> ()
      }, {
        ^bb2(%arg3: i32):
          %5 = "arith.muli"(%arg3, %arg3) <{overflowFlags = #arith
        , overflowFlags = #arith}> : (i32, i32) -> i32
          %6 = "arith.addi"(%5, %0) <{overflowFlags = #arith
        , overflowFlags = #arith}> : (i32, i32) -> i32
          "scf.yield"(%6) : (i32) -> ()
      }) : (i32) -> i32
      "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()