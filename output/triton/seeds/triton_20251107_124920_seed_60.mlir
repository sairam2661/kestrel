"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<10xi32>, tensor<10xi32>) -> (tensor<10xi32>), sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<10xi32>, %arg2: tensor<10xi32>):
    %0 = "ttg.global_scratch_alloc"() <{alignment = 4 : i32, size = 40 : i32}> : () -> !ttg_global_ptr
    %1 = "tt.expand_dims"(%arg1, 0) : (tensor<10xi32>, i32) -> tensor<1x10xi32>
    %2 = "scf.if"(%arg0) ({
      %3 = "arith.subi"(%arg1, %arg2) <{overflowFlags = #arith_overflowFlagsEnumNone}> : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
      "scf.yield"(%3) : (tensor<10xi32>) -> ()
    }, {
      "scf.yield"(%arg2) : (tensor<10xi32>) -> ()
    }) : (i32) -> tensor<10xi32>
    %4 = "tt.reduce"(%1, %2) <{reduction_op = #tt_reduction_opEnumSum}> : (tensor<1x10xi32>, tensor<10xi32>) -> tensor<10xi32>
    "tt.return"(%4) : (tensor<10xi32>) -> ()
  }) : () -> ()
}) : () -> ()