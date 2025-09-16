"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "arith_index_castui"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.index_castui"(%arg0) : (i32) -> index
    %1 = "arith.index_castui"(%0) : (index) -> i32
    %2 = "arith.index_castui"(%0) : (index) -> i1
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

