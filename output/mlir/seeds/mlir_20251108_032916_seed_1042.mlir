"builtin.module"() ({
  "func.func"() <{function_type = (i8, i32) -> (i64, i16), sym_name = "mixed_types_and_control_flow"}> ({
  ^bb0(%arg0: i8, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i8}> : () -> i8
    %1 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %0) : (i8, i8) -> i8
    %3 = "arith.cmpi"("sge", %arg1, %1) : (i32, i32) -> i1
    "scf.if"(%3) ({
      %4 = "arith.constant"() <{value = 1000 : i64}> : () -> i64
      %5 = "arith.constant"() <{value = 50 : i16}> : () -> i16
      "scf.yield"(%4, %5) : (i64, i16) -> ()
    }, {
      %6 = "arith.constant"() <{value = 2000 : i64}> : () -> i64
      %7 = "arith.constant"() <{value = 100 : i16}> : () -> i16
      "scf.yield"(%6, %7) : (i64, i16) -> ()
    }) : (i1) -> (i64, i16)
    "func.return"(%2, %2) : (i8, i8) -> ()
  }) : () -> ()
}) : () -> ()