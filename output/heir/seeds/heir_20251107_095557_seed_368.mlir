"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}], function_type = (i8, i8, i8, i8, i8, i8, i8, i8, i8, i8) -> i8, sym_name = "complex_rotate"}> ({
  ^bb0(%arg0: i8, %arg1: i8, %arg2: i8, %arg3: i8, %arg4: i8, %arg5: i8, %arg6: i8, %arg7: i8, %arg8: i8, %arg9: i8):
    %0 = "arith.constant"() <{value = 1 : i8}> : () -> i8
    %1 = "arith.constant"() <{value = 2 : i8}> : () -> i8
    %2 = "arith.constant"() <{value = 3 : i8}> : () -> i8
    %3 = "arith.constant"() <{value = 4 : i8}> : () -> i8
    %4 = "arith.constant"() <{value = 5 : i8}> : () -> i8
    %5 = "arith.constant"() <{value = 6 : i8}> : () -> i8
    %6 = "arith.constant"() <{value = 7 : i8}> : () -> i8
    %7 = "arith.constant"() <{value = 8 : i8}> : () -> i8
    %8 = "arith.constant"() <{value = 9 : i8}> : () -> i8
    %9 = "arith.constant"() <{value = 10 : i8}> : () -> i8
    %10 = "tensor_ext.rotate"(%arg0, %0) : (i8, i8) -> i8
    %11 = "tensor_ext.rotate"(%arg1, %1) : (i8, i8) -> i8
    %12 = "tensor_ext.rotate"(%arg2, %2) : (i8, i8) -> i8
    %13 = "tensor_ext.rotate"(%arg3, %3) : (i8, i8) -> i8
    %14 = "tensor_ext.rotate"(%arg4, %4) : (i8, i8) -> i8
    %15 = "tensor_ext.rotate"(%arg5, %5) : (i8, i8) -> i8
    %16 = "tensor_ext.rotate"(%arg6, %6) : (i8, i8) -> i8
    %17 = "tensor_ext.rotate"(%arg7, %7) : (i8, i8) -> i8
    %18 = "tensor_ext.rotate"(%arg8, %8) : (i8, i8) -> i8
    %19 = "tensor_ext.rotate"(%arg9, %9) : (i8, i8) -> i8
    %20 = "arith.addi"(%10, %11) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %21 = "arith.addi"(%20, %12) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %22 = "arith.addi"(%21, %13) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %23 = "arith.addi"(%22, %14) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %24 = "arith.addi"(%23, %15) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %25 = "arith.addi"(%24, %16) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %26 = "arith.addi"(%25, %17) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %27 = "arith.addi"(%26, %18) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %28 = "arith.addi"(%27, %19) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    "func.return"(%28) : (i8) -> ()
  }) : () -> ()
}) : () -> ()