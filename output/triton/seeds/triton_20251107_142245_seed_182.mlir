"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "complex_control_flow1", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %c0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %cmp = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i32) -> i1
    "scf.if"(%cmp) ({
    ^bb0():
      %sum = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arithOverflownone}> : (i32, i32) -> i32
      "tt.return"(%sum, %c0) : (i32, i32) -> ()
    }, {
    ^bb1():
      %diff = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arithOverflownone}> : (i32, i32) -> i32
      "tt.return"(%c0, %diff) : (i32, i32) -> ()
    }) : (i1) -> ()
  }) : () -> ()
}) : () -> ()