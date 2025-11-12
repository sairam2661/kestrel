"builtin.module"() ({
  "func.func"() <{function_type = (i1, tensor<3xi8>) -> (i1, tensor<3xi8>), sym_name = "test_cmp_and_update"}> ({
  ^bb0(%arg0: i1, %arg1: tensor<3xi8>):
    %0 = "arith.cmpi"(%arg0, %arg0) <{predicate = "eq"}> : (i1, i1) -> i1
    %1 = "arith.constant"() <{value = 10 : i8}> : () -> i8
    %2 = "arith.constant"() <{value = 20 : i8}> : () -> i8
    %3 = "arith.constant"() <{value = 30 : i8}> : () -> i8
    %4 = "arith.constant"() <{value = 40 : i8}> : () -> i8
    %5 = "arith.constant"() <{value = 50 : i8}> : () -> i8
    %6 = "arith.constant"() <{value = 60 : i8}> : () -> i8
    %7 = "arith.constant"() <{value = 70 : i8}> : () -> i8
    %8 = "arith.constant"() <{value = 80 : i8}> : () -> i8
    %9 = "arith.constant"() <{value = 90 : i8}> : () -> i8
    %10 = "arith.constant"() <{value = 100 : i8}> : () -> i8
    %11 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow_} > : (i1, i1) -> i1
    %12 = "tosa.scatter"(%arg1, %arg0, %1) : (tensor<3xi8>, i1, i8) -> tensor<3xi8>
    %13 = "arith.select"(%0, %12, %arg1) : (i1, tensor<3xi8>, tensor<3xi8>) -> tensor<3xi8>
    "func.return"(%13) : (tensor<3xi8>) -> ()
  }) : () -> ()
}) : () -> ()