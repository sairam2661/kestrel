"builtin.module"() ({
  "func.func"() <{function_type = () -> i64, sym_name = "foldShl"}> ({
    %39 = "arith.constant"() <{value = 1 : i64}> : () -> i64
    %40 = "arith.constant"() <{value = 32 : i64}> : () -> i64
    %41 = "arith.shli"(%39, %40) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    "func.return"(%41) : (i64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> i64, sym_name = "nofoldShl"}> ({
    %36 = "arith.constant"() <{value = 1 : i64}> : () -> i64
    %37 = "arith.constant"() <{value = 132 : i64}> : () -> i64
    %38 = "arith.shli"(%36, %37) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    "func.return"(%38) : (i64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> i64, sym_name = "nofoldShl2"}> ({
    %33 = "arith.constant"() <{value = 1 : i64}> : () -> i64
    %34 = "arith.constant"() <{value = -32 : i64}> : () -> i64
    %35 = "arith.shli"(%33, %34) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    "func.return"(%35) : (i64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> i64, sym_name = "nofoldShl3"}> ({
    %30 = "arith.constant"() <{value = 1 : i64}> : () -> i64
    %31 = "arith.constant"() <{value = 64 : i64}> : () -> i64
    %32 = "arith.shli"(%30, %31) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    "func.return"(%32) : (i64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> i64, sym_name = "foldShru"}> ({
    %27 = "arith.constant"() <{value = 8 : i64}> : () -> i64
    %28 = "arith.constant"() <{value = 2 : i64}> : () -> i64
    %29 = "arith.shrui"(%27, %28) : (i64, i64) -> i64
    "func.return"(%29) : (i64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> i64, sym_name = "foldShru2"}> ({
    %24 = "arith.constant"() <{value = -2 : i64}> : () -> i64
    %25 = "arith.constant"() <{value = 1 : i64}> : () -> i64
    %26 = "arith.shrui"(%24, %25) : (i64, i64) -> i64
    "func.return"(%26) : (i64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> i64, sym_name = "nofoldShru"}> ({
    %21 = "arith.constant"() <{value = 8 : i64}> : () -> i64
    %22 = "arith.constant"() <{value = 132 : i64}> : () -> i64
    %23 = "arith.shrui"(%21, %22) : (i64, i64) -> i64
    "func.return"(%23) : (i64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> i64, sym_name = "nofoldShru2"}> ({
    %18 = "arith.constant"() <{value = 8 : i64}> : () -> i64
    %19 = "arith.constant"() <{value = -32 : i64}> : () -> i64
    %20 = "arith.shrui"(%18, %19) : (i64, i64) -> i64
    "func.return"(%20) : (i64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> i64, sym_name = "nofoldShru3"}> ({
    %15 = "arith.constant"() <{value = 8 : i64}> : () -> i64
    %16 = "arith.constant"() <{value = 64 : i64}> : () -> i64
    %17 = "arith.shrui"(%15, %16) : (i64, i64) -> i64
    "func.return"(%17) : (i64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> i64, sym_name = "foldShrs"}> ({
    %12 = "arith.constant"() <{value = 8 : i64}> : () -> i64
    %13 = "arith.constant"() <{value = 2 : i64}> : () -> i64
    %14 = "arith.shrsi"(%12, %13) : (i64, i64) -> i64
    "func.return"(%14) : (i64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> i64, sym_name = "foldShrs2"}> ({
    %9 = "arith.constant"() <{value = -2 : i64}> : () -> i64
    %10 = "arith.constant"() <{value = 1 : i64}> : () -> i64
    %11 = "arith.shrsi"(%9, %10) : (i64, i64) -> i64
    "func.return"(%11) : (i64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> i64, sym_name = "nofoldShrs"}> ({
    %6 = "arith.constant"() <{value = 8 : i64}> : () -> i64
    %7 = "arith.constant"() <{value = 132 : i64}> : () -> i64
    %8 = "arith.shrsi"(%6, %7) : (i64, i64) -> i64
    "func.return"(%8) : (i64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> i64, sym_name = "nofoldShrs2"}> ({
    %3 = "arith.constant"() <{value = 8 : i64}> : () -> i64
    %4 = "arith.constant"() <{value = -32 : i64}> : () -> i64
    %5 = "arith.shrsi"(%3, %4) : (i64, i64) -> i64
    "func.return"(%5) : (i64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> i64, sym_name = "nofoldShrs3"}> ({
    %0 = "arith.constant"() <{value = 8 : i64}> : () -> i64
    %1 = "arith.constant"() <{value = 64 : i64}> : () -> i64
    %2 = "arith.shrsi"(%0, %1) : (i64, i64) -> i64
    "func.return"(%2) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

