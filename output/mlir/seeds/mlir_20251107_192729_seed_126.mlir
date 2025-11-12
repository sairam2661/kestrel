"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "mixed_operations"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i32) -> i1
    %2 = "arith.select"(%1, %arg0, %arg1) : (i1, i32, i32) -> i32
    %3 = "arith.cmpi"(%arg0, %arg1, "eq") : (i32, i32) -> i1
    %4 = "arith.select"(%3, %0, %arg1) : (i1, i32, i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
  "spirv.module"() <{addressing_model = #spirv_addressing_model_log, memory_model = #spirv_memory_model_glsl450}> ({
    "spirv.func"() <{function_control = #spirv_function_control_none, function_type = (i32) -> i32, sym_name = "spv_func"}> ({
    ^bb1(%arg2: i32):
      %5 = "arith.addi"(%arg2, %arg2) : (i32, i32) -> i32
      %6 = "spirv.ReturnValue"(%5) : (i32) -> ()
    }) : () -> ()
  }) : () -> ()
}) : () -> ()