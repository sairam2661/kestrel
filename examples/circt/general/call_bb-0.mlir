"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index) -> index, sym_name = "muladd"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index):
    %30 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %31 = "arith.addi"(%arg2, %30) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "func.return"(%31) : (index) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (index, index), sym_name = "main"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 101 : index}> : () -> index
    %2 = "arith.constant"() <{value = 102 : index}> : () -> index
    %3 = "arith.addi"(%0, %0) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %4 = "arith.constant"() <{value = 1 : index}> : () -> index
    %5 = "arith.addi"(%3, %2) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %6 = "arith.constant"() <{value = 103 : index}> : () -> index
    %7 = "arith.constant"() <{value = 104 : index}> : () -> index
    %8 = "arith.constant"() <{value = 105 : index}> : () -> index
    %9 = "arith.constant"() <{value = 106 : index}> : () -> index
    %10 = "arith.constant"() <{value = 107 : index}> : () -> index
    %11 = "arith.constant"() <{value = 108 : index}> : () -> index
    %12 = "arith.constant"() <{value = 109 : index}> : () -> index
    %13 = "arith.constant"() <{value = 2 : index}> : () -> index
    %14 = "func.call"(%7, %13, %6) <{callee = @muladd}> : (index, index, index) -> index
    %15 = "arith.constant"() <{value = 3 : index}> : () -> index
    %16 = "arith.muli"(%8, %15) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %17 = "arith.addi"(%14, %16) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %18 = "arith.constant"() <{value = 4 : index}> : () -> index
    %19 = "arith.muli"(%9, %18) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %20 = "arith.addi"(%17, %19) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %21 = "arith.constant"() <{value = 5 : index}> : () -> index
    %22 = "arith.muli"(%10, %21) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %23 = "arith.addi"(%20, %22) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %24 = "arith.constant"() <{value = 6 : index}> : () -> index
    %25 = "arith.muli"(%11, %24) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %26 = "arith.addi"(%23, %25) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %27 = "arith.constant"() <{value = 7 : index}> : () -> index
    %28 = "arith.muli"(%12, %27) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %29 = "arith.addi"(%26, %28) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "func.return"(%28, %29) : (index, index) -> ()
  }) : () -> ()
}) : () -> ()

