"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xi32>, tensor<10x10xi32>) -> tensor<10x10xi32>, sym_name = "complex_nested_selects"}> ({
  ^bb0(%arg0: tensor<10x10xi32>, %arg1: tensor<10x10xi32>):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c3_i32 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %c4_i32 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %c5_i32 = "arith.constant"() <{value = 5 : i32}> : () -> i32

    %select1 = "arith.select"(%c0_i32, %c1_i32, %c2_i32) : (i32, i32, i32) -> i32
    %select2 = "arith.select"(%c3_i32, %c4_i32, %c5_i32) : (i32, i32, i32) -> i32

    %cmp = "arith.cmpi"(%select1, %select2, 4) : (i32, i32, i64) -> i1

    %select3 = "arith.select"(%cmp, %arg0, %arg1) : (i1, tensor<10x10xi32>, tensor<10x10xi32>) -> tensor<10x10xi32>
    "func.return"(%select3) : (tensor<10x10xi32>) -> ()
  }) : () -> ()
}) : () -> ()