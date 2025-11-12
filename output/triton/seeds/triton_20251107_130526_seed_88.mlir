"builtin.module"() ({
  "tt.func"() <{function_type = (!ttg_gpu_ptr) -> (!ttg_gpu_ptr), sym_name = "nested_reduce", sym_visibility = "public"}> ({
    ^bb0(%a: !ttg_gpu_ptr):
      %0 = "tt.reduce"(%a) <{operation = "add", reduction_type = "i32"}> ({
        ^rbb0(%acc: i32, %value: i32):
          %1 = "arith.addi"(%acc, %value) : (i32, i32) -> i32
          "scf.yield"(%1) : (i32) -> ()
      }) : (!ttg_gpu_ptr) -> i32
      %2 = "tt.expand_dims"(%0) <{axis = 0}> : (i32) -> tensor<1xi32>
      "tt.return"(%2) : (tensor<1xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32, "ttg.target" = "cuda:90"} : () -> ()