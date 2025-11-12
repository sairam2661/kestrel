"builtin.module"() ({
  "spirv.func"() <{function_type = (i32) -> i32, sym_name = "test_spirv_func"}> ({
  ^bb0(%arg0: i32):
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %1) <{overflowFlags = #arith_overflowAttrs}> : (i32, i32) -> i32
    %3 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %4 = "arith.muli"(%2, %3) <{overflowFlags = #arith_overflowAttrs}> : (i32, i32) -> i32
    "spirv.ReturnValue"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()