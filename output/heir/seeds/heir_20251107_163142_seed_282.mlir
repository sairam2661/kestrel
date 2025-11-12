"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.muli"(%1, %0) : (i32, i32) -> i32
    %3 = "arith.cmpi"(%arg0, %arg1, "slt") <{result = false}> : (i32, i32) -> i1
    %4 = "arith.select"(%3, %2, %arg1) : (i1, i32, i32) -> i32
    %5 = "arith.subi"(%4, %arg0) : (i32, i32) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> i32, sym_name = "nested_operations"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.muli"(%2, %1) : (i32, i32) -> i32
    %4 = "arith.subi"(%3, %0) : (i32, i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()