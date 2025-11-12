"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<4x5xf32>, memref<3x2xi64>) -> (i1, tensor<5x4xf32>), sym_name = "test_complex_func"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<4x5xf32>, %arg2: memref<3x2xi64>):
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %cmp = "arith.cmpi"(%arg0, %c1_i32) <{predicate = "eq"}> : (i32, i32) -> i1
    %cond = "arith.cmpi"(%arg0, %c0_i32) <{predicate = "ne"}> : (i32, i32) -> i1
    %select = "arith.select"(%cond, %c1_i32, %c0_i32) : (i1, i32, i32) -> i32
    %tosa_const = "tosa.const"() <{value = dense<0.000000e+00> : tensor<4x5xf32>}> : () -> tensor<4x5xf32>
    %load = "memref.load"(%arg2, %c0_i32, %c0_i32) : (memref<3x2xi64>, i32, i32) -> i64
    %cmpf = "arith.cmpf"(%arg1, %tosa_const) <{predicate = "oeq"}> : (tensor<4x5xf32>, tensor<4x5xf32>) -> tensor<4x5xi1>
    %addf = "arith.addf"(%arg1, %tosa_const) : (tensor<4x5xf32>, tensor<4x5xf32>) -> tensor<4x5xf32>
    "func.return"(%cmp, %addf) : (i1, tensor<4x5xf32>) -> ()
  }) : () -> ()
}) : () -> ()