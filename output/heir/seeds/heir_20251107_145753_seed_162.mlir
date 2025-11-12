"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret) -> !secretsecret, sym_name = "complex_nested_loops_and_conditions"}> ({
  ^bb0(%arg0: !secretsecret):
    %0 = "secret.generic"(%arg0) ({
    ^bb0(%arg1: i32):
      %1 = "arith.constant"() <{value = 0 : index}> : () -> index
      %2 = "arith.constant"() <{value = 0 : index}> : () -> index
      %3 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %4 = "arith.constant"() <{value = 1 : index}> : () -> index
      %5 = "arith.constant"() <{value = 1 : index}> : () -> index
      %6 = "arith.constant"() <{value = 1 : index}> : () -> index
      %7 = "arith.constant"() <{value = 1 : index}> : () -> index
      %8 = "arith.constant"() <{value = 1 : index}> : () -> index
      %9 = "arith.constant"() <{value = 1 : index}> : () -> index
      %10 = "arith.constant"() <{value = 1 : index}> : () -> index
      %11 = "arith.constant"() <{value = 1 : index}> : () -> index
      %12 = "arith.constant"() <{value = 1 : index}> : () -> index
      %13 = "arith.constant"() <{value = 1 : index}> : () -> index
      %14 = "arith.constant"() <{value = 1 : index}> : () -> index
      %15 = "arith.constant"() <{value = 1 : index}> : () -> index
      %16 = "arith.constant"() <{value = 1 : index}> : () -> index
      %17 = "arith.constant"() <{value = 1 : index}> : () -> index
      %18 = "arith.constant"() <{value = 1 : index}> : () -> index
      %19 = "scf.for"(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18) ({
      ^bb0(%arg2: index, %arg3: index, %arg4: i32, %arg5: index, %arg6: index, %arg7: index, %arg8: index, %arg9: index, %arg10: index, %arg11: index, %arg12: index, %arg13: index, %arg14: index, %arg15: index, %arg16: index, %arg17: index, %arg18: index):
        %19 = "scf.if"(%arg4) ({
          %20 = "arith.addi"(%arg4, %arg5) <{overflowFlags = #arithoverflownone}> : (i32, index) -> i32
          "scf.yield"(%20) : (i32) -> ()
        }, {
          %21 = "arith.addi"(%arg4, %arg6) <{overflowFlags = #arithoverflownone}> : (i32, index) -> i32
          "scf.yield"(%21) : (i32) -> ()
        }) : (i1) -> (i32)
        "scf.yield"(%19, %arg5, %arg6, %arg7, %arg8, %arg9, %arg10, %arg11, %arg12, %arg13, %arg14, %arg15, %arg16, %arg17, %arg18) : (i32, index, index, index, index, index, index, index, index, index, index, index, index, index, index, index) -> ()
      }) {lower = 0 : i64, upper = 42 : i64} : (index, index, i32, index, index, index, index, index, index, index, index, index, index, index, index, index, index) -> (i32, index, index, index, index, index, index, index, index, index, index, index, index, index, index, index, index)
      "secret.yield"(%19#0) : (i32) -> ()
    }) : (!secretsecret) -> !secretsecret
    "func.return"(%0) : (!secretsecret) -> ()
  }) : () -> ()
}) : () -> ()