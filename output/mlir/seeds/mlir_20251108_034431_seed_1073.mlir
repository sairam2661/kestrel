"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "mix_arith_and_cmp"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.cmpi"(%1, %0, "slt") : (i32, i32) -> i1
    %3 = "arith.constant"() <{value = 20 : i32}> : () -> i32
    %4 = "arith.addi"(%arg0, %3) : (i32, i32) -> i32
    %5 = "arith.cmpf"(%4, %arg1, "ogt") : (i32, i32) -> i1
    %6 = "arith.select"(%2, %1, %4) : (i1, i32, i32) -> i32
    "func.return"(%6) : (i32) -> ()
  }) : () -> ()
}) : () -> ()