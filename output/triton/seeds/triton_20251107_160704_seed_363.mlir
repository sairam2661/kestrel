"builtin.module"() ({
  "tt.func"() <{function_type = (!ttgglobal_scratch_alloc, !ttgglobal_scratch_alloc, !ttgglobal_scratch_alloc) -> !ttgglobal_scratch_alloc, sym_name = "complex_op"}> ({
    ^bb0(%arg0: !ttgglobal_scratch_alloc, %arg1: !ttgglobal_scratch_alloc, %arg2: !ttgglobal_scratch_alloc):
      %0 = "arith.constant"() <{value = dense<1.000000e+00> : tensor<32x32xf32>}> : () -> tensor<32x32xf32>
      %1 = "arith.constant"() <{value = dense<2.000000e+00> : tensor<32x32xf32>}> : () -> tensor<32x32xf32>
      %2 = "arith.cmpi"(%0, %1, "gt") : (tensor<32x32xf32>, tensor<32x32xf32>) -> tensor<32x32xi1>
      %3 = "tt.make_range"() <{size = 16 : i32}> : () -> tensor<16xi32>
      %4 = "scf.for"(%arg0) <{lower_bound = 0 : i32, upper_bound = 16 : i32, step = 1 : i32}> ({
      ^bb1(%iv: i32):
        %5 = "arith.addi"(%iv, %iv) : (i32, i32) -> i32
        %6 = "arith.xori"(%5, %iv) : (i32, i32) -> i32
        %7 = "arith.divsi"(%6, %iv) : (i32, i32) -> i32
        "scf.yield"(%iv) : (i32) -> ()
      }) : (i32) -> ()
      %8 = "tt.reduce"(%2) <{axis = 0 : i32}> ({
      ^bb2(%arg3: i1, %arg4: i1):
        %9 = "arith.andi"(%arg3, %arg4) : (i1, i1) -> i1
        "tt.reduce.return"(%9) : (i1) -> ()
      }) : (tensor<32x32xi1>) -> tensor<32xi1>
      %10 = "tt.expand_dims"(%8) <{axis = 1 : i32}> : (tensor<32xi1>) -> tensor<32x1xi1>
      %11 = "tt.addptr"(%arg1, %4) : (!ttgglobal_scratch_alloc, i32) -> !ttgglobal_scratch_alloc
      "tt.return"(%11) : (!ttgglobal_scratch_alloc) -> ()
  }) : () -> ()
}) : () -> ()