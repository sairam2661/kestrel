"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32}], function_type = (i32) -> i32, sym_name = "complex_division"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 1024 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 32 : i32}> : () -> i32
    %2 = "arith.divsi"(%0, %1) : (i32, i32) -> i32
    %3 = "arith.remsi"(%0, %1) : (i32, i32) -> i32
    %4 = "arith.addi"(%2, %3) : (i32, i32) -> i32
    %5 = "arith.select"(%4, %arg0, %0) : (i32, i32, i32) -> i32
    %6 = "arith.cmpi"(%5, %1, "slt") : (i32, i32) -> i1
    %7 = "arith.xori"(%6, %4) : (i1, i32) -> i32
    "tt.return"(%7) : (i32) -> ()
  }) : (i32) -> (i32)
}) : () -> ()