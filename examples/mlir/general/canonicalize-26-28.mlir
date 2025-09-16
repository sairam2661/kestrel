"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "udiv_x_1"}> ({
  ^bb0(%arg0: i32):
    %10 = "spirv.Constant"() <{value = 1 : i32}> : () -> i32
    %11 = "spirv.UDiv"(%arg0, %10) : (i32, i32) -> i32
    "func.return"(%11) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> i32, sym_name = "udiv_div_0"}> ({
    %7 = "spirv.Constant"() <{value = 0 : i32}> : () -> i32
    %8 = "spirv.Constant"() <{value = -1 : i32}> : () -> i32
    %9 = "spirv.UDiv"(%8, %7) : (i32, i32) -> i32
    "func.return"(%9) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (i32, i32, i32), sym_name = "const_fold_scalar_udiv"}> ({
    %0 = "spirv.Constant"() <{value = 56 : i32}> : () -> i32
    %1 = "spirv.Constant"() <{value = 7 : i32}> : () -> i32
    %2 = "spirv.Constant"() <{value = -8 : i32}> : () -> i32
    %3 = "spirv.Constant"() <{value = 3 : i32}> : () -> i32
    %4 = "spirv.UDiv"(%0, %1) : (i32, i32) -> i32
    %5 = "spirv.UDiv"(%2, %3) : (i32, i32) -> i32
    %6 = "spirv.UDiv"(%0, %2) : (i32, i32) -> i32
    "func.return"(%4, %5, %6) : (i32, i32, i32) -> ()
  }) : () -> ()
}) : () -> ()

