"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32}], function_type = (!tt_ptr32, !tt_ptr32) -> (), sym_name = "complex_if_for"}> ({
  ^bb0(%arg0: !tt_ptr32, %arg1: !tt_ptr32):
    %0 = "arith.constant"() <{value = dense<1.000000e+00> : tensor<16x16xf32>}> : () -> tensor<16x16xf32>
    %1 = "arith.constant"() <{value = dense<2.000000e+00> : tensor<16x16xf32>}> : () -> tensor<16x16xf32>
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "scf.if"(%2) ({
      %4 = "arith.addf"(%0, %1) <{fastmath = #arith_fastmath_attrs}> : (tensor<16x16xf32>, tensor<16x16xf32>) -> tensor<16x16xf32>
      "scf.yield"(%4) : (tensor<16x16xf32>) -> ()
    }, {
      %5 = "arith.mulf"(%0, %1) <{fastmath = #arith_fastmath_attrs}> : (tensor<16x16xf32>, tensor<16x16xf32>) -> tensor<16x16xf32>
      "scf.yield"(%5) : (tensor<16x16xf32>) -> ()
    }) : (i32) -> tensor<16x16xf32>
    %6 = "scf.for"(%arg0, %arg1, %3, %3) ({
    ^bb1(%arg2: !tt_ptr32, %arg3: !tt_ptr32, %arg4: i32):
      %7 = "arith.addi"(%arg4, %2) <{overflowFlags = #arith_overflow_attrs}> : (i32, i32) -> i32
      %8 = "arith.cmpi"(%arg4, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
      "scf.yield"(%arg2, %arg3, %7, %8) : (!tt_ptr32, !tt_ptr32, i32, i1) -> ()
    }) : (!tt_ptr32, !tt_ptr32, i32, i32) -> (!tt_ptr32, !tt_ptr32, i32, i1)
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()