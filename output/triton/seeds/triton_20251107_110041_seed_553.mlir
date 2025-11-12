"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flags}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %1 = "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> memref<1024xi32>
    %2 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flags}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flags}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "arith.divsi"(%arg0, %arg1) <{signedness = #arith_signedness}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %5 = "arith.cmpi"(%arg0, %arg1) <{predicate = 4 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> i1
    "scf.if"(%5) ({
      %6 = "scf.for"(%0, %0, %arg0, %2) ({
      ^bb0(%arg2: tensor<16xi32>, %arg3: tensor<16xi32>):
        %7 = "arith.addi"(%arg3, %1) <{overflowFlags = #arith_overflow_flags}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
        "scf.yield"(%7) : (tensor<16xi32>) -> ()
      }) : (tensor<16xi32>, tensor<16xi32>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%6) : (tensor<16xi32>) -> ()
    }, {
      "scf.yield"(%0) : (tensor<16xi32>) -> ()
    }) : (i1) -> tensor<16xi32>
    "tt.return"(%3) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()