"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> i32, sym_name = "complex_math"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 1000 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 500 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.subi"(%2, %1) : (i32, i32) -> i32
    %4 = "arith.muli"(%3, %arg0) : (i32, i32) -> i32
    %5 = "arith.cmpi"(%4, %arg0, "slt") : (i32, i32) -> i1
    %6 = "arith.select"(%5, %4, %0) : (i1, i32, i32) -> i32
    %7 = "arith.remsi"(%6, %1) : (i32, i32) -> i32
    %8 = "arith.xori"(%7, %arg0) : (i32, i32) -> i32
    "tt.return"(%8) : (i32) -> ()
  }) : (i32) -> (i32)
}) : () -> ()