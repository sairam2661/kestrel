"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, i32, tensor<2xi32>) -> (i32, tensor<2xi32>), sym_name = "complex_interaction"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: i32, %arg2: tensor<2xi32>):
    %0 = "secret.generic"(%arg0, %arg1, %arg2) ({
    ^bb0(%arg3: i32, %arg4: tensor<2xi32>):
      %1 = "scf.for"(%arg3, %arg4) <{lowerBound = 0 : i32, upperBound = 2 : i32, step = 1 : i32}> ({
      ^bb1(%iv: i32, %arg5: tensor<2xi32>):
        %2 = "tensor.extract"(%arg5, %iv) : (tensor<2xi32>, i32) -> i32
        %3 = "arith.muli"(%2, %2) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
        %4 = "tensor.insert"(%3, %arg5, %iv) : (i32, tensor<2xi32>, i32) -> tensor<2xi32>
        "scf.yield"(%iv, %4) : (i32, tensor<2xi32>) -> ()
      }) : (i32, tensor<2xi32>) -> (i32, tensor<2xi32>)
      "secret.yield"(%1#1) : (tensor<2xi32>) -> ()
    }) : (!secretsecret, i32, tensor<2xi32>) -> (tensor<2xi32>)
    %5 = "func.call"(%0) <{callee = @identity}> : (tensor<2xi32>) -> tensor<2xi32>
    %6 = "arith.muli"(%arg1, %arg1) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    "func.return"(%6, %5) : (i32, tensor<2xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2xi32>) -> tensor<2xi32>, sym_name = "identity"}> ({
  ^bb0(%arg0: tensor<2xi32>):
    "func.return"(%arg0) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()