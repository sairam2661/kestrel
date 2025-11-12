"builtin.module"() ({
  "spirv.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_spirv_ops"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.muli"(%1, %0) : (i32, i32) -> i32
    %3 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %4 = "arith.divisi"(%2, %3) : (i32, i32) -> i32
    "spirv.ReturnValue"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()