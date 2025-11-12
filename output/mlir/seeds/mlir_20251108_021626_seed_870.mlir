"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32), sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c3_i32 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    "scf.for"(%c0_i32, %c3_i32, %c1_i32) ({
    ^bb0(%iv: i32):
      %cmp = "arith.cmpi"(%iv, %c2_i32) <{predicate = 4 : i64}> : (i32, i32) -> i1
      "scf.if"(%cmp) ({
        "scf.yield"() : () -> ()
      }, {
        %add = "arith.addi"(%iv, %c1_i32) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"() : () -> ()
      }) : (i1) -> ()
      "scf.yield"() : () -> ()
    }) : (i32, i32, i32) -> ()
    %result = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%result) : (i32) -> ()
  }) : (i32, i32) -> (i32)
}) : () -> ()