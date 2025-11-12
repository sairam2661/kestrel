"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_operation"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.cmpi"(%arg0, %arg1, "sgt") : (i32, i32) -> i1
    %1 = "arith.select"(%0, %arg0, %arg1) : (i1, i32, i32) -> i32
    %2 = "arith.addi"(%1, %1) : (i32, i32) -> i32
    "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()