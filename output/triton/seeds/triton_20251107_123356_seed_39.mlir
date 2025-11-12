"builtin.module"() ({
  "tt.func"() <{function_type = (!ttg_ptr, !ttg_ptr, tensor<32xi32>) -> (), sym_name = "test_fuzz"}> ({
  ^bb0(%arg0: !ttg_ptr, %arg1: !ttg_ptr, %arg2: tensor<32xi32>):
    %0 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
    %1 = "arith.cmpi"(%arg2, %0, "eq") : (tensor<32xi32>, tensor<32xi32>, i32) -> tensor<32xi1>
    %2 = "arith.select"(%1, %arg0, %arg1) : (tensor<32xi1>, !ttg_ptr, !ttg_ptr) -> !ttg_ptr
    "scf.for"(%0, %0, %1) ({
    ^bb0(%arg3: tensor<32xi32>):
      %3 = "arith.xori"(%arg3, %arg2) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %4 = "arith.muli"(%3, %2) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %5 = "arith.remsi"(%4, %3) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "tt.addptr"(%2, %5) : (!ttg_ptr, tensor<32xi32>) -> !ttg_ptr
      "scf.yield"() : () -> ()
    }) : (tensor<32xi32>, tensor<32xi32>, tensor<32xi32>) -> ()
    "tt.reduce"(%2) ({
    ^bb0(%arg4: !ttg_ptr, %arg5: !ttg_ptr):
      %6 = "tt.addptr"(%arg4, %arg5) : (!ttg_ptr, !ttg_ptr) -> !ttg_ptr
      "scf.yield"(%6) : (!ttg_ptr) -> ()
    }) : (!ttg_ptr, !ttg_ptr) -> !ttg_ptr
    "tt.expand_dims"(%2, 1) : (!ttg_ptr) -> !ttg_ptr
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()