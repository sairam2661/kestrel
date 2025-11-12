"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<i32>, tensor<i32>) -> tensor<i32>, sym_name = "complex_reduce"}> ({
    ^bb0(%arg0: tensor<i32>, %arg1: tensor<i32>):
      %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> memref<1024xi32, #ttg_memref_layout>
      %1 = "tt.reduce"(%arg0, %arg1) <{operation = "add"}> : (tensor<i32>, tensor<i32>) -> tensor<i32>
      %2 = "tt.reduce"(%arg1, %arg0) <{operation = "mul"}> : (tensor<i32>, tensor<i32>) -> tensor<i32>
      %3 = "tt.addptr"(%1, %2) <{offset = 0 : i32}> : (tensor<i32>, tensor<i32>) -> tensor<i32>
      %4 = "tt.expand_dims"(%3) <{dim = 0 : i64}> : (tensor<i32>) -> tensor<1xi32>
      %5 = "scf.if"(%arg0) ({
        ^bb0(%arg0: tensor<i32>):
          %6 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_NONE}> : (tensor<i32>, tensor<i32>) -> tensor<i32>
          "scf.yield"(%6) : (tensor<i32>) -> tensor<i32>
      }) {
        else_branch = {
          "^bb1(%arg0: tensor<i32>) -> (tensor<i32>)"  = "arith.subi" , "overflowFlags" = "#arith_overflow_NONE" },  "scf.yield" = "%6 : tensor<i32>" 
      }
      : (tensor<i32>) -> tensor<i32>
      "tt.return"(%5) : (tensor<i32>) -> ()
  }) : (tensor<i32>, tensor<i32>) -> tensor<i32>
}) : () -> ()