"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (), sym_name = "arith_index"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.index_cast"(%arg0) : (i32) -> index
    %1 = "arith.index_cast"(%arg1) : (i32) -> index
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %3 = "arith.subi"(%0, %1) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %4 = "arith.muli"(%0, %1) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

