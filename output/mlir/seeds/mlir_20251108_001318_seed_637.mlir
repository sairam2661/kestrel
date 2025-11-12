"builtin.module"() ({
  "spirv.func"() <{function_type = (i32, i32) -> i32, sym_name = "spirv_example"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %1 = "arith.muli"(%0, %0) : (i32) -> i32
      %2 = "arith.subi"(%1, %arg0) : (i32, i32) -> i32
      "spirv.ReturnValue"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()