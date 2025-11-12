"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>, sym_name = "complex_reduce_and_cmp"}> ({
    ^bb0(%arg0: tensor<16x16xi32>, %arg1: tensor<16x16xi32>):
      %0 = "tt.reduce"(%arg0) <{axis = 1 : i32}> ({
        ^bb1(%arg2: i32, %arg3: i32):
          %1 = "arith.addi"(%arg2, %arg3) : (i32, i32) -> i32
          "tt.reduce.return"(%1) : (i32) -> ()
      }) : (tensor<16x16xi32>) -> tensor<16xi32>
      %2 = "tt.reduce"(%arg1) <{axis = 0 : i32}> ({
        ^bb2(%arg4: i32, %arg5: i32):
          %3 = "arith.subi"(%arg4, %arg5) : (i32, i32) -> i32
          "tt.reduce.return"(%3) : (i32) -> ()
      }) : (tensor<16x16xi32>) -> tensor<16xi32>
      %4 = "arith.cmpi"(%0, %2) <{predicate = 2 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
      %5 = "tt.expand_dims"(%4) <{axis = 1 : i32}> : (tensor<16xi1>) -> tensor<16x1xi1>
      %6 = "tt.expand_dims"(%5) <{axis = 0 : i32}> : (tensor<16x1xi1>) -> tensor<16x16xi1>
      %7 = "arith.cmpi"(%arg0, %arg1) <{predicate = 1 : i64}> : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi1>
      %8 = "arith.andi"(%6, %7) : (tensor<16x16xi1>, tensor<16x16xi1>) -> tensor<16x16xi1>
      %9 = "tt.reduce"(%8) <{axis = 0 : i32}> ({
        ^bb3(%arg6: i1, %arg7: i1):
          %10 = "arith.andi"(%arg6, %arg7) : (i1, i1) -> i1
          "tt.reduce.return"(%10) : (i1) -> ()
      }) : (tensor<16x16xi1>) -> tensor<16xi1>
      %11 = "tt.expand_dims"(%9) <{axis = 1 : i32}> : (tensor<16xi1>) -> tensor<16x1xi1>
      %12 = "tt.expand_dims"(%11) <{axis = 0 : i32}> : (tensor<16x1xi1>) -> tensor<16x16xi1>
      "tt.return"(%12) : (tensor<16x16xi1>) -> ()
  }) : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi1>
}) : () -> ()