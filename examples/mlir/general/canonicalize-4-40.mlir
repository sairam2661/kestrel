"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i1, sym_name = "test1"}> ({
  ^bb0(%arg6: i32):
    %18 = "arith.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
    %19 = "arith.uitofp"(%arg6) : (i32) -> f64
    %20 = "arith.cmpf"(%19, %18) <{fastmath = #arith.fastmath<none>, predicate = 5 : i64}> : (f64, f64) -> i1
    "func.return"(%20) : (i1) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> i1, sym_name = "test2"}> ({
  ^bb0(%arg5: i32):
    %15 = "arith.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
    %16 = "arith.uitofp"(%arg5) : (i32) -> f64
    %17 = "arith.cmpf"(%16, %15) <{fastmath = #arith.fastmath<none>, predicate = 4 : i64}> : (f64, f64) -> i1
    "func.return"(%17) : (i1) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> i1, sym_name = "test3"}> ({
  ^bb0(%arg4: i32):
    %12 = "arith.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
    %13 = "arith.uitofp"(%arg4) : (i32) -> f64
    %14 = "arith.cmpf"(%13, %12) <{fastmath = #arith.fastmath<none>, predicate = 3 : i64}> : (f64, f64) -> i1
    "func.return"(%14) : (i1) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> i1, sym_name = "test4"}> ({
  ^bb0(%arg3: i32):
    %9 = "arith.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
    %10 = "arith.uitofp"(%arg3) : (i32) -> f64
    %11 = "arith.cmpf"(%10, %9) <{fastmath = #arith.fastmath<none>, predicate = 2 : i64}> : (f64, f64) -> i1
    "func.return"(%11) : (i1) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> i1, sym_name = "test5"}> ({
  ^bb0(%arg2: i32):
    %6 = "arith.constant"() <{value = -4.400000e+00 : f64}> : () -> f64
    %7 = "arith.uitofp"(%arg2) : (i32) -> f64
    %8 = "arith.cmpf"(%7, %6) <{fastmath = #arith.fastmath<none>, predicate = 2 : i64}> : (f64, f64) -> i1
    "func.return"(%8) : (i1) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> i1, sym_name = "test6"}> ({
  ^bb0(%arg1: i32):
    %3 = "arith.constant"() <{value = -4.400000e+00 : f64}> : () -> f64
    %4 = "arith.uitofp"(%arg1) : (i32) -> f64
    %5 = "arith.cmpf"(%4, %3) <{fastmath = #arith.fastmath<none>, predicate = 4 : i64}> : (f64, f64) -> i1
    "func.return"(%5) : (i1) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> i1, sym_name = "test7"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 3.200000e+00 : f64}> : () -> f64
    %1 = "arith.uitofp"(%arg0) : (i32) -> f64
    %2 = "arith.cmpf"(%1, %0) <{fastmath = #arith.fastmath<none>, predicate = 3 : i64}> : (f64, f64) -> i1
    "func.return"(%2) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

