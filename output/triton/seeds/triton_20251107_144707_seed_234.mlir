"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32), sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %3 = "arith.muli"(%2, %0) : (i32, i32) -> i32
    %4 = "arith.cmpi"(%3, %1, "slt") : (i32, i32) -> i1
    %5 = "arith.select"(%4, %0, %1) : (i1, i32, i32) -> i32
    %6 = "arith.subi"(%5, %arg0) : (i32, i32) -> i32
    %7 = "arith.remsi"(%6, %1) : (i32, i32) -> i32
    %8 = "arith.xori"(%7, %arg1) : (i32, i32) -> i32
    "tt.return"(%8) : (i32) -> ()
  }) : () -> (i32)
}) : () -> ()