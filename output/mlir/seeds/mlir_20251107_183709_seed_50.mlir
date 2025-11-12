"builtin.module"() ({
  "func.func"() <{function_type = (i32, memref<16x16xi8>) -> memref<16x16xi8>, sym_name = "complex_pattern"}> ({
  ^bb0(%arg0: i32, %arg1: memref<16x16xi8>):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    "scf.if"(%1) <{result_types = [i32]}> ({
    ^bb1(%2: i32):
      %3 = "arith.constant"() <{value = 100 : i32}> : () -> i32
      "scf.yield"(%3) : (i32) -> i32
    }, {
    ^bb2():
      %4 = "arith.constant"() <{value = 200 : i32}> : () -> i32
      "scf.yield"(%4) : (i32) -> i32
    }) : (i32) -> i32
    "scf.for"(%1, %0, %0) <{result_types = []}> ({
    ^bb3(%5: i32, %6: i32):
      %7 = "arith.addi"(%5, %6) : (i32, i32) -> i32
      "scf.yield"(%7) : (i32) -> i32
    }) : () -> ()
    "func.return"(%arg1) : (memref<16x16xi8>) -> ()
  }) : () -> ()
}) : () -> ()