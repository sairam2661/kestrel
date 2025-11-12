"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>, sym_name = "matrix_multiply"}> ({
  ^bb0(%arg0: tensor<8x8xi32>, %arg1: tensor<8x8xi32>):
    %0 = "tt.zero"() <{shape = [8, 8], elementType = i32}> : () -> tensor<8x8xi32>
    "scf.for"(%c0 : index) ({
    ^bb1(%iv0: index):
      "scf.for"(%c0 : index) ({
      ^bb2(%iv1: index):
        "scf.for"(%c0 : index) ({
        ^bb3(%iv2: index):
          %1 = "tt.extract"(%arg0, %iv0, %iv2) : (tensor<8x8xi32>, index, index) -> i32
          %2 = "tt.extract"(%arg1, %iv2, %iv1) : (tensor<8x8xi32>, index, index) -> i32
          %3 = "arith.muli"(%1, %2) : (i32, i32) -> i32
          %4 = "tt.extract"(%0, %iv0, %iv1) : (tensor<8x8xi32>, index, index) -> i32
          %5 = "arith.addi"(%3, %4) : (i32, i32) -> i32
          "tt.insert"(%5, %0, %iv0, %iv1) <{overflowFlags = #arith_overflow}>({}) : (i32, tensor<8x8xi32>, index, index) -> tensor<8x8xi32>
          "scf.yield"() : () -> ()
        }) {tt.num_stages = 2 : i32, tt.num_warps = 4 : i32} : (index) -> ()
        "scf.yield"() : () -> ()
      }) {tt.num_stages = 2 : i32, tt.num_warps = 4 : i32} : (index) -> ()
      "scf.yield"() : () -> ()
    }) {tt.num_stages = 2 : i32, tt.num_warps = 4 : i32} : (index) -> ()
    "tt.return"(%0) : (tensor<8x8xi32>) -> ()
  }) : () -> ()
}) : () -> ()