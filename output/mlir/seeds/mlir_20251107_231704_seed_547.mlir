"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x3xi32>, tensor<3x2xi32>) -> tensor<4x2xi32>, sym_name = "matrix_multiply"}> ({
  ^bb0(%arg0: tensor<4x3xi32>, %arg1: tensor<3x2xi32>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "tensor.empty"() <{shape = [4, 2], elementType = i32}> : () -> tensor<4x2xi32>
    "scf.for"(%arg0, %i0) <{lowerBound = 0 : i32, upperBound = 4 : i32, step = 1 : i32}> ({
    ^bb1(%i0: i32):
      "scf.for"(%arg1, %i1) <{lowerBound = 0 : i32, upperBound = 2 : i32, step = 1 : i32}> ({
      ^bb2(%i1: i32):
        %2 = "arith.constant"() <{value = 0 : i32}> : () -> i32
        "scf.for"(%arg2, %i2) <{lowerBound = 0 : i32, upperBound = 3 : i32, step = 1 : i32}> ({
        ^bb3(%i2: i32):
          %3 = "tensor.extract"(%arg0, %i0, %i2) : (tensor<4x3xi32>, i32, i32) -> i32
          %4 = "tensor.extract"(%arg1, %i2, %i1) : (tensor<3x2xi32>, i32, i32) -> i32
          %5 = "arith.muli"(%3, %4) : (i32, i32) -> i32
          %6 = "arith.addi"(%2, %5) : (i32, i32) -> i32
          %7 = "scf.yield"(%6) : (i32) -> ()
        }) : (i32) -> (i32)
        %8 = "tensor.insert"(%7, %1, %i0, %i1) : (i32, tensor<4x2xi32>, i32, i32) -> tensor<4x2xi32>
        %9 = "scf.yield"(%8) : (tensor<4x2xi32>) -> ()
      }) : (tensor<4x2xi32>) -> (tensor<4x2xi32>)
      %10 = "scf.yield"(%9) : (tensor<4x2xi32>) -> ()
    }) : (tensor<4x2xi32>) -> (tensor<4x2xi32>)
    "func.return"(%10) : (tensor<4x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()