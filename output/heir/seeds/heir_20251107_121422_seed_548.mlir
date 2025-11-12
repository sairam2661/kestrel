"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_add"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arithOverflowNone}> : (i32, i32) -> i32
    %1 = "arith.cmpi"("eq", %0, %arg0) <{overflowFlags = #arithOverflowNone}> : (i32, i32) -> i1
    %2 = "combo.truth_table"(%1, %1) <{lookupTable = 1 : ui4}> : (i1, i1) -> i1
    %3 = "arith.select"(%2, %0, %arg0) <{overflowFlags = #arithOverflowNone}> : (i1, i32, i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()