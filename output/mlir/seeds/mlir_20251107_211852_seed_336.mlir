"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32), sym_name = "complex_transform"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %cst0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %cst1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %cst2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %cst3 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %cmp0 = "arith.cmpi"(%arg0, %cst0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %cmp1 = "arith.cmpi"(%arg1, %cst0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %select0 = "arith.select"(%cmp0, %arg0, %cst0) : (i1, i32, i32) -> i32
    %select1 = "arith.select"(%cmp1, %arg1, %cst0) : (i1, i32, i32) -> i32
    %add0 = "arith.addi"(%select0, %cst1) : (i32, i32) -> i32
    %add1 = "arith.addi"(%select1, %cst2) : (i32, i32) -> i32
    %mul0 = "arith.muli"(%add0, %add1) : (i32, i32) -> i32
    %sub0 = "arith.subi"(%mul0, %cst3) : (i32, i32) -> i32
    "func.return"(%sub0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()