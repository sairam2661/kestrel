"builtin.module"() ({
  "spirv.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_calculation"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.muli"(%0, %arg0) : (i32, i32) -> i32
    %2 = "arith.subi"(%1, %arg1) : (i32, i32) -> i32
    %3 = "arith.divi"(%2, %arg1) : (i32, i32) -> i32
    "spirv.ReturnValue"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()