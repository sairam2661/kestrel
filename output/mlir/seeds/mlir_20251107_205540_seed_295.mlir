"builtin.module"() ({
  "spirv.func"() <{function_type = (i32, i64) -> i32, sym_name = "mixed_types"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i64) -> i64
    %1 = "arith.extui"(%0) : (i64) -> i32
    %2 = "arith.mulsi"(%1, %arg0) : (i32, i32) -> i32
    "spirv.ReturnValue"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()