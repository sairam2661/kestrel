"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "stress_test"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.cmpi"("slt", %1, %arg0) : (i32, i32) -> i1
    %3 = "arith.select"(%2, %1, %arg0) : (i1, i32, i32) -> i32
    "scf.for"(%arg0, %0) <{bounds = [0, 5], step = 1}> ({
    ^bb1(%iv: i32):
      %4 = "arith.addi"(%iv, %3) : (i32, i32) -> i32
      "scf.yield"() : ()
    }) : (i32) -> ()
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()