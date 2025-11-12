"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, i32) -> !secretsecret, sym_name = "complex_fuzz"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: i32):
    %2 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %4 = "scf.for"(%arg1, %3, %2, %arg1) ({
    ^bb0(%arg2: i32, %arg3: i32):
      %5 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %6 = "scf.if"(%5) ({
        %8 = "arith.muli"(%arg2, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%8) : (i32) -> ()
      }, {
        %7 = "arith.subi"(%arg2, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%7) : (i32) -> ()
      }) : (i32) -> i32
      "scf.yield"(%6) : (i32) -> ()
    }) {lower = 0 : i64, upper = 10 : i64} : (i32, i32, i32, i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> i32, sym_name = "entry_point"}> ({
  ^bb0():
    %0 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %1 = "secret.generic"(%0) ({
    ^bb0(%arg0: i32):
      %2 = "func.call"(%arg0) <{callee = @complex_fuzz}> : (i32) -> i32
      "secret.yield"(%2) : (i32) -> ()
    }) : (!secretsecret) -> !secretsecret
    "func.return"(%1) : (!secretsecret) -> ()
  }) : () -> ()
}) : () -> ()