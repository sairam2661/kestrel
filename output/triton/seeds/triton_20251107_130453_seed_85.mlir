"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32}], function_type = (tensor<i32>, tensor<i32>) -> tensor<i32>, sym_name = "complex_reduce", sym_visibility = "public"}> ({
    ^bb0(%arg0: tensor<i32>, %arg1: tensor<i32>):
      %0 = "tt.expand_dims"(%arg0) <{dimension = 1 : i32}> : (tensor<i32>) -> tensor<1xi32>
      %1 = "tt.expand_dims"(%arg1) <{dimension = 1 : i32}> : (tensor<i32>) -> tensor<1xi32>
      %2 = "tt.addptr"(%0, %1) : (tensor<1xi32>, tensor<1xi32>) -> tensor<1xi32>
      %3 = "tt.reduce"(%2) <{operation = "add"}> : (tensor<1xi32>) -> tensor<i32>
      "tt.return"(%3) : (tensor<i32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, ttg.target = "cuda:90", "ttg.threads-per-warp" = 32 : i32} : () -> ()