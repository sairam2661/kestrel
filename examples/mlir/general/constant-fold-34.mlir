"builtin.module"() ({
  "func.func"() <{function_type = () -> (i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1), sym_name = "cmpf_inf"}> ({
    %0 = "arith.constant"() <{value = 4.200000e+01 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 0x7F800000 : f32}> : () -> f32
    %2 = "arith.cmpf"(%0, %1) <{fastmath = #arith.fastmath<none>, predicate = 0 : i64}> : (f32, f32) -> i1
    %3 = "arith.cmpf"(%0, %1) <{fastmath = #arith.fastmath<none>, predicate = 1 : i64}> : (f32, f32) -> i1
    %4 = "arith.cmpf"(%0, %1) <{fastmath = #arith.fastmath<none>, predicate = 2 : i64}> : (f32, f32) -> i1
    %5 = "arith.cmpf"(%0, %1) <{fastmath = #arith.fastmath<none>, predicate = 3 : i64}> : (f32, f32) -> i1
    %6 = "arith.cmpf"(%0, %1) <{fastmath = #arith.fastmath<none>, predicate = 4 : i64}> : (f32, f32) -> i1
    %7 = "arith.cmpf"(%0, %1) <{fastmath = #arith.fastmath<none>, predicate = 5 : i64}> : (f32, f32) -> i1
    %8 = "arith.cmpf"(%0, %1) <{fastmath = #arith.fastmath<none>, predicate = 6 : i64}> : (f32, f32) -> i1
    %9 = "arith.cmpf"(%0, %1) <{fastmath = #arith.fastmath<none>, predicate = 7 : i64}> : (f32, f32) -> i1
    %10 = "arith.cmpf"(%0, %1) <{fastmath = #arith.fastmath<none>, predicate = 8 : i64}> : (f32, f32) -> i1
    %11 = "arith.cmpf"(%0, %1) <{fastmath = #arith.fastmath<none>, predicate = 9 : i64}> : (f32, f32) -> i1
    %12 = "arith.cmpf"(%0, %1) <{fastmath = #arith.fastmath<none>, predicate = 10 : i64}> : (f32, f32) -> i1
    %13 = "arith.cmpf"(%0, %1) <{fastmath = #arith.fastmath<none>, predicate = 11 : i64}> : (f32, f32) -> i1
    %14 = "arith.cmpf"(%0, %1) <{fastmath = #arith.fastmath<none>, predicate = 12 : i64}> : (f32, f32) -> i1
    %15 = "arith.cmpf"(%0, %1) <{fastmath = #arith.fastmath<none>, predicate = 13 : i64}> : (f32, f32) -> i1
    %16 = "arith.cmpf"(%0, %1) <{fastmath = #arith.fastmath<none>, predicate = 14 : i64}> : (f32, f32) -> i1
    %17 = "arith.cmpf"(%0, %1) <{fastmath = #arith.fastmath<none>, predicate = 15 : i64}> : (f32, f32) -> i1
    "func.return"(%2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17) : (i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1) -> ()
  }) : () -> ()
}) : () -> ()

