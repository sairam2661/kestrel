"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 8 : i32}, {tt.divisibility = 4 : i32}], function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_reduce", sym_visibility = "public"}> ({
    ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
      %0 = "tt.reduce"() <{operation = "add"}> ({
        ^bb1(%arg2: tensor<16xi32>, %arg3: tensor<16xi32>):
          %1 = "arith.addi"(%arg2, %arg3) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
          "scf.yield"(%1) : (tensor<16xi32>) -> ()
      }) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %2 = "arith.subi"(%arg0, %0) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %3 = "tt.expand_dims"(%2, %c1_i64) : (tensor<16xi32>, i64) -> tensor<16x1xi32>
      %4 = "tt.addptr"(%arg1, %3) : (tensor<16xi32>, tensor<16x1xi32>) -> tensor<16xi32>
      "tt.return"(%4) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()