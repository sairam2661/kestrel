"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecrettensor15xi8, !secretsecreti8, !secretsecreti8) -> !secretsecreti8, sym_name = "fuzz_comb_truth_table"}> ({
  ^bb0(%arg0: !secretsecrettensor15xi8, %arg1: !secretsecreti8, %arg2: !secretsecreti8):
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
    %10 = "arith.constant"() <{value = 11 : i8}> : () -> i8
    %11 = "arith.constant"() <{value = 12 : i8}> : () -> i8
    %12 = "arith.constant"() <{value = 13 : i8}> : () -> i8
    %13 = "arith.constant"() <{value = 14 : i8}> : () -> i8
    %14 = "arith.constant"() <{value = 15 : i8}> : () -> i8
    %15 = "arith.constant"() <{value = 16 : i8}> : () -> i8
    %16 = "arith.constant"() <{value = 17 : i8}> : () -> i8
    %17 = "arith.constant"() <{value = 18 : i8}> : () -> i8
    %18 = "arith.constant"() <{value = 19 : i8}> : () -> i8
    %19 = "arith.constant"() <{value = 20 : i8}> : () -> i8
    %20 = "arith.constant"() <{value = 21 : i8}> : () -> i8
    %21 = "arith.constant"() <{value = 22 : i8}> : () -> i8
    %22 = "arith.constant"() <{value = 23 : i8}> : () -> i8
    %23 = "arith.constant"() <{value = 24 : i8}> : () -> i8
    %24 = "arith.constant"() <{value = 25 : i8}> : () -> i8
    %25 = "arith.constant"() <{value = 26 : i8}> : () -> i8
    %26 = "arith.constant"() <{value = 27 : i8}> : () -> i8
    %27 = "arith.constant"() <{value = 28 : i8}> : () -> i8
    %28 = "arith.constant"() <{value = 29 : i8}> : () -> i8
    %29 = "arith.constant"() <{value = 30 : i8}> : () -> i8
    %30 = "arith.constant"() <{value = 31 : i8}> : () -> i8
    %31 = "arith.constant"() <{value = 32 : i8}> : () -> i8
    %32 = "secret.generic"(%arg0, %arg1, %arg2) ({
    ^bb0(%arg3: tensor<15xi8>, %arg4: i8, %arg5: i8):
      %33 = "comb.truth_table"(%arg4, %arg5) <{table = dense<0> : tensor<2xi2>}> : (i8, i8) -> i2
      %34 = "arith.addi"(%arg3, %33) <{overflowFlags = #arithoverflownone}> : (tensor<15xi8>, i2) -> tensor<15xi8>
      "secret.yield"(%34) : (tensor<15xi8>) -> ()
    }) : (!secretsecrettensor15xi8, !secretsecreti8, !secretsecreti8) -> !secretsecreti8
    "func.return"(%32) : (!secretsecreti8) -> ()
  }) : () -> ()
}) : () -> ()