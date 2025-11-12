"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10x10x10x10x10x10xf32>, tensor<10x10x10x10x10x10x10xf32>) -> tensor<20x10x10x10x10x10x10xf32>, sym_name = "extreme_dimensions_concat"}> ({
  ^bb0(%arg0: tensor<10x10x10x10x10x10x10xf32>, %arg1: tensor<10x10x10x10x10x10x10xf32>):
    %0 = "tosa.concat"(%arg0, %arg0) <{axis = 0 : i32}> : (tensor<10x10x10x10x10x10x10xf32>, tensor<10x10x10x10x10x10x10xf32>) -> tensor<20x10x10x10x10x10x10xf32>
    "func.return"(%0) : (tensor<20x10x10x10x10x10x10xf32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i1, i1, i1) -> (i1), sym_name = "bitwise_operations"}> ({
  ^bb0(%arg0: i1, %arg1: i1, %arg2: i1):
    %3 = "arith.andi"(%arg0, %arg1) : (i1, i1) -> i1
    %4 = "arith.xori"(%arg2, %3) : (i1, i1) -> i1
    "func.return"(%4) : (i1) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2x2x2x2x2x2x2xf32>) -> tensor<2x2x2x2x2x2x2xf32>, sym_name = "nested_loops"}> ({
  ^bb0(%arg0: tensor<2x2x2x2x2x2x2xf32>):
    "scf.for"(%c0 : index, %c2 : index) ({
    ^bb0(%arg1: index):
      "scf.for"(%c0 : index, %c2 : index) ({
      ^bb0(%arg2: index):
        %5 = "tosa.clamp"(%arg0) <{max_val = 1.0 : f32, min_val = -1.0 : f32, nan_mode = "PROPAGATE"}> : (tensor<2x2x2x2x2x2x2xf32>) -> tensor<2x2x2x2x2x2x2xf32>
        "scf.yield"() : () -> ()
      }) : (index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index) -> ()
    "func.return"(%arg0) : (tensor<2x2x2x2x2x2x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()