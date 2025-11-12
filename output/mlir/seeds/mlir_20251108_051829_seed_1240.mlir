"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32), sym_name = "test_cmp_and_logic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.cmpi"(%arg0, %arg1, "lt") : (i32, i32) -> i1
    %1 = "arith.cmpi"(%arg0, %arg1, "gt") : (i32, i32) -> i1
    %2 = "arith.andi"(%0, %1) : (i1, i1) -> i1
    "func.return"(%2) : (i1) -> ()
  }) : () -> ()
}) : () -> ()