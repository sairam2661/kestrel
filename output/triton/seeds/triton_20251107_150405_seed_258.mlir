"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32), sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.divsi"(%1, %arg1) : (i32, i32) -> i32
    %3 = "arith.remsi"(%1, %arg1) : (i32, i32) -> i32
    %4 = "arith.cmpi"(%2, %3, "slt") : (i32, i32) -> i1
    %5 = "arith.select"(%4, %2, %3) : (i1, i32, i32) -> i32
    %6 = "arith.muli"(%5, %0) : (i32, i32) -> i32
    %7 = "arith.xori"(%6, %arg0) : (i32, i32) -> i32
    "tt.return"(%7) : (i32) -> ()
  }) : () -> ()
}) : () -> ()