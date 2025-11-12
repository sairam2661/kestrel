"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>) -> i32, sym_name = "matrix_reduction"}> ({
  ^bb0(%arg0: tensor<4x4xi32>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "scf.for"(%0) <{lowerBound = 0 : index, upperBound = 4 : index, step = 1 : index}> ({
    ^bb1(%i: index):
      %2 = "scf.for"(%0) <{lowerBound = 0 : index, upperBound = 4 : index, step = 1 : index}> ({
      ^bb2(%j: index):
        %3 = "tensor.extract"(%arg0, %i, %j) : (tensor<4x4xi32>, index, index) -> i32
        %4 = "arith.addi"(%0, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%4) : (i32) -> ()
      }) : (i32) -> (i32)
      "scf.yield"(%2) : (i32) -> ()
    }) : (i32) -> (i32)
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()