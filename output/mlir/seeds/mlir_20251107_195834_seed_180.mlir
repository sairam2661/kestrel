"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (tensor<2x3xi32>, f32), sym_name = "complex_fusion"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
      %1 = "arith.cmpi"(%0, %arg0) <{predicate = 4 : i64}> : (i32, i32) -> i1
      %2 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
      %3 = "arith.cmpf"(%2, %arg1) <{predicate = 4 : i64}> : (f32, f32) -> i1
      %4 = "scf.if"(%1) ({
        ^bb1(%arg2: i1):
          %5 = "arith.constant"() <{value = 42 : i32}> : () -> i32
          "scf.yield"(%5) : (i32) -> i32
      }, {
        ^bb2(%arg3: i1):
          %6 = "arith.constant"() <{value = 100 : i32}> : () -> i32
          "scf.yield"(%6) : (i32) -> i32
      }) : (i1) -> i32
      %7 = "arith.constant"() <{value = dense<[[1, 2, 3], [4, 5, 6]]> : tensor<2x3xi32>}>() : () -> tensor<2x3xi32>
      %8 = "scf.if"(%3) ({
        ^bb3(%arg4: i1):
          %9 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
          "scf.yield"(%9) : (f32) -> f32
      }, {
        ^bb4(%arg5: i1):
          %10 = "arith.constant"() <{value = 2.71 : f32}> : () -> f32
          "scf.yield"(%10) : (f32) -> f32
      }) : (i1) -> f32
      "func.return"(%4, %8) : (i32, tensor<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()