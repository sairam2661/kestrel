"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "matrix_multiply"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
    %0 = "arith.constant"() <{value = dense<0> : tensor<4x4xi32>}> : () -> tensor<4x4xi32>
    %1 = "scf.for"() <{lower_bound = 0 : index, upper_bound = 4 : index, step = 1 : index}> ({
    ^bb1(%iv: index):
      %2 = "scf.for"() <{lower_bound = 0 : index, upper_bound = 4 : index, step = 1 : index}> ({
      ^bb2(%jv: index):
        %3 = "scf.for"() <{lower_bound = 0 : index, upper_bound = 4 : index, step = 1 : index}> ({
        ^bb3(%kv: index):
          %4 = "memref.load"(%arg0, %iv, %kv) : (tensor<4x4xi32>, index, index) -> i32
          %5 = "memref.load"(%arg1, %kv, %jv) : (tensor<4x4xi32>, index, index) -> i32
          %6 = "arith.muli"(%4, %5) : (i32, i32) -> i32
          %7 = "memref.load"(%0, %iv, %jv) : (tensor<4x4xi32>, index, index) -> i32
          %8 = "arith.addi"(%7, %6) : (i32, i32) -> i32
          "memref.store"(%8, %0, %iv, %jv) : (i32, tensor<4x4xi32>, index, index)
        ^bb4:
          "scf.yield"() : () -> ()
        }) : () -> ()
      ^bb5:
        "scf.yield"() : () -> ()
      }) : () -> ()
    ^bb6:
      "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%0) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()