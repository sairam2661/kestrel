"builtin.module"() ({
  "func.func"() <{function_type = (i32, i8) -> i32, sym_name = "mixed_types_example"}> ({
  ^bb0(%arg0: i32, %arg1: i8):
    %0 = "arith.extui"(%arg1) : (i8) -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.cmpi"(%1, %arg0) <{predicate = "slt"}> : (i32, i32) -> i1
    %3 = "arith.select"(%2, %1, %arg0) : (i1, i32, i32) -> i32
    %4 = "arith.const"() <{value = 42 : i32}> : () -> i32
    %5 = "arith.addi"(%3, %4) : (i32, i32) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()