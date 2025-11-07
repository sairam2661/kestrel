"builtin.module"() ({
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
    %14 = "arith.muli"(%7, %13) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %15 = "arith.addi"(%6, %14) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %16 = "arith.constant"() <{value = 3 : index}> : () -> index
    %17 = "arith.muli"(%8, %16) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %18 = "arith.addi"(%15, %17) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %19 = "arith.constant"() <{value = 4 : index}> : () -> index
    %20 = "arith.muli"(%9, %19) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %21 = "arith.addi"(%18, %20) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %22 = "arith.constant"() <{value = 5 : index}> : () -> index
    %23 = "arith.muli"(%10, %22) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %24 = "arith.addi"(%21, %23) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %25 = "arith.constant"() <{value = 6 : index}> : () -> index
    %26 = "arith.muli"(%11, %25) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %27 = "arith.addi"(%24, %26) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %28 = "arith.constant"() <{value = 7 : index}> : () -> index
    %29 = "arith.muli"(%12, %28) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %30 = "arith.addi"(%27, %29) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "func.return"(%29, %30) : (index, index) -> ()
  }) : () -> ()
}) : () -> ()

