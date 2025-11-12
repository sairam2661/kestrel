"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %cst0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %cst1 = "arith.constant"() <{value = 20 : i32}> : () -> i32
    %add0 = "arith.addi"(%arg0, %cst0) : (i32, i32) -> i32
    %cmp0 = "arith.cmpi"(%add0, %cst1, "slt") : (i32, i32) -> i1
    %add1 = "arith.addi"(%arg1, %cst1) : (i32, i32) -> i32
    %cmp1 = "arith.cmpi"(%add1, %cst0, "sle") : (i32, i32) -> i1
    %add2 = "arith.addi"(%add0, %add1) : (i32, i32) -> i32
    %cmp2 = "arith.cmpi"(%add2, %cst0, "sgt") : (i32, i32) -> i1
    %add3 = "arith.addi"(%add1, %cst0) : (i32, i32) -> i32
    %cmp3 = "arith.cmpi"(%add3, %cst1, "sge") : (i32, i32) -> i1
    "func.return"(%add2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()