"builtin.module"() ({
  "tt.func"() <{function_type = (!ttptr)into!ttptr, sym_name = "kernel_with_reduction", sym_visibility = "public", tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}> ({
    ^bb0(%arg0: !ttptr):
      %0 = "arith.constant"() <{value = dense<1> : tensor<128xi32>}> : () -> tensor<128xi32>
      %1 = "arith.constant"() <{value = dense<2> : tensor<128xi32>}> : () -> tensor<128xi32>
      %2 = "arith.cmpi"(%0, %1, "ne") : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
      %3 = "arith.select"(%2, %0, %1) : (tensor<128xi1>, tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %4 = "tt.reduce"(%3, "add") ({
        ^bb0(%arg1: tensor<128xi32>, %arg2: tensor<128xi32>):
          %5 = "arith.addi"(%arg1, %arg2) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
          "scf.yield"(%5) : (tensor<128xi32>) -> ()
      }) : (tensor<128xi32>) -> tensor<128xi32>
      %6 = "tt.expand_dims"(%4, 0) <{new_sizes = [1, 128]}> : (tensor<128xi32>) -> tensor<1x128xi32>
      %7 = "tt.addptr"(%arg0, %6) : (!ttptr, tensor<1x128xi32>) -> !ttptr
      "tt.return"(%7) : (!ttptr) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()