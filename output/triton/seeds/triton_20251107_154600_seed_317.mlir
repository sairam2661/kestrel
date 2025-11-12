"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<4xi32>) -> (i32, tensor<4xi32>), sym_name = "mixed_ops"}> ({
    ^bb0(%arg0: i32, %arg1: tensor<4xi32>):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.xori"(%arg0, %0) : (i32, i32) -> i32
      %2 = "tt.make_range"() <{end = 4 : i32, start = 0 : i32}> : () -> tensor<4xi32>
      %3 = "arith.select"(%1, %2, %arg1) : (i32, tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      %4 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      "scf.for"() <{upperBound = 4 : i32, lowerBound = 0 : i32}> ({
        ^bb1(%iv: i32):
          %5 = "tt.expand_dims"(%3, %iv) : (tensor<4xi32>, i32) -> tensor<4x4xi32>
          "scf.yield"() : () -> ()
      }) : () -> ()
      %6 = "tt.reduce"() <{operation = "add"}> ({
        ^bb2(%init: i32):
          %7 = "arith.muli"(%init, %0) : (i32, i32) -> i32
          "scf.yield"(%7) : (i32) -> ()
      }) : (i32) -> i32
      "tt.return"(%1, %3) : (i32, tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()