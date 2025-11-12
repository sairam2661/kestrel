"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x2xf32>, tensor<4x2xi32>) -> tensor<4x2xf32>, sym_name = "mixed_tensor_ops"}> ({
  ^bb0(%arg0: tensor<4x2xf32>, %arg1: tensor<4x2xi32>):
    %0 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.cmpi"(%arg1, %1) <{predicate = "eq"}> : (tensor<4x2xi32>, tensor<4x2xi32>) -> tensor<4x2xi1>
    %3 = "arith.addf"(%arg0, %0) : (tensor<4x2xf32>, f32) -> tensor<4x2xf32>
    %4 = "scf.if"(%2) ({
      ^bb1(%arg2: tensor<4x2xi1>):
        "scf.yield"(%3) : (tensor<4x2xf32>) -> tensor<4x2xf32>
    }, {
      ^bb2(%arg2: tensor<4x2xi1>):
        %5 = "arith.cmpi"(%arg1, %0) <{predicate = "ne"}> : (tensor<4x2xi32>, i32) -> tensor<4x2xi1>
        %6 = "arith.addf"(%arg0, %0) : (tensor<4x2xf32>, f32) -> tensor<4x2xf32>
        "scf.yield"(%6) : (tensor<4x2xf32>) -> tensor<4x2xf32>
    }) : (tensor<4x2xi1>) -> tensor<4x2xf32>
    "func.return"(%4) : (tensor<4x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()