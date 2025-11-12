"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i1) -> i32, sym_name = "conditional_add"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i1):
    %0 = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i32) -> i1
    %1 = "scf.if"(%0) ({
      ^bb0:
        %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
        "scf.yield"(%2) : (i32) -> ()
    }) : (i32)
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()