"builtin.module"() ({
  "func.func"() <{arg_attrs = [{}, {}, {}, {}, {}], function_type = (i32, i32, i32, i32, i32) -> i32, sym_name = "complex_select"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32):
    %0 = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i32) -> i1
    %1 = "arith.cmpi"(%arg2, %arg3, "slt") : (i32, i32) -> i1
    %2 = "arith.select"(%0, %1, %arg4) : (i1, i1, i32) -> i1
    %3 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %5 = "arith.select"(%2, %3, %4) : (i1, i32, i32) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()