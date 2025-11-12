"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64, memref<4x3xi8>) -> i32, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: i64, %arg2: memref<4x3xi8>):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.muli"(%0, %arg1) : (i32, i64) -> i64
    %2 = "arith.extsi"(%1) : (i64) -> i32
    %3 = "memref.load"(%arg2, %c0, %c1) : (memref<4x3xi8>, index, index) -> i8
    %4 = "arith.extui"(%3) : (i8) -> i32
    %5 = "arith.addi"(%2, %4) : (i32, i32) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> i32, sym_name = "nested_region"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.addi"(%arg0, %c1) : (i32, i32) -> i32
    if.successor1:  () -> ()  if.successor2:  () -> ()
    %1 = "scf.if"(%0) <{sym_name = "if_condition"}> ({
    ^bb1:  %2 = "arith.addi"(%0, %c1) : (i32, i32) -> i32
    "scf.yield"(%2) : (i32)
    }) : (i32)
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()