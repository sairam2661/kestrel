"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<2xi32>) -> tensor<4xi32>, sym_name = "complex_cmp_and_add"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<2xi32>):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %0 = "arith.cmpi"(%arg0, %c0_i32) <{predicate = "sgt"}> : (tensor<4xi32>, i32) -> tensor<i1>
    %1 = "arith.cmpi"(%arg1, %c1_i32) <{predicate = "slt"}> : (tensor<2xi32>, i32) -> tensor<i1>
    %2 = "arith.andi"(%0, %1) : (tensor<i1>, tensor<i1>) -> tensor<i1>
    %3 = "arith.select"(%2, %arg0, %c0_i32) : (tensor<i1>, tensor<4xi32>, i32) -> tensor<4xi32>
    "func.return"(%3) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()