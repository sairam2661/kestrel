"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "andand0"}> ({
  ^bb0(%arg6: i32, %arg7: i32):
    %6 = "arith.andi"(%arg6, %arg7) : (i32, i32) -> i32
    %7 = "arith.andi"(%arg6, %6) : (i32, i32) -> i32
    "func.return"(%7) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "andand1"}> ({
  ^bb0(%arg4: i32, %arg5: i32):
    %4 = "arith.andi"(%arg4, %arg5) : (i32, i32) -> i32
    %5 = "arith.andi"(%4, %arg4) : (i32, i32) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "andand2"}> ({
  ^bb0(%arg2: i32, %arg3: i32):
    %2 = "arith.andi"(%arg2, %arg3) : (i32, i32) -> i32
    %3 = "arith.andi"(%arg3, %2) : (i32, i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "andand3"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.andi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.andi"(%0, %arg1) : (i32, i32) -> i32
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

