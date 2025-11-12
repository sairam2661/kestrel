"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arith_ops"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.cmpi"(%0, %arg0) {predicate = "sgt"} : (i32, i32) -> i1
    %2 = "arith.select"(%1, %0, %arg1) : (i1, i32, i32) -> i32
    %3 = "arith.cmpi"(%2, %arg1) {predicate = "slt"} : (i32, i32) -> i1
    %4 = "arith.select"(%3, %2, %arg0) : (i1, i32, i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()