"builtin.module"() ({
  "tt.func"() <{function_type = () -> (tensor<128x128xi32>, tensor<128x128xi32>), sym_name = "complex_op_sequence", sym_visibility = "public"}> ({
    %0 = "ttg.global_scratch_alloc"() <{alignment = 32 : i32, nbytes = 128 : i32}> : () -> !tt ptr
    .
    etc.68
    : () -> tensor<128xi32>
    %2 = "tt.reduce"(%1) <{operation = #ttgCppMethodPointer, operand_segment_sizes = [2 : i32, 1 : i32], operands = [#ttgCppMethodPointer, #ttgCppMethodPointer]}> : (tensor<128xi32>) -> tensor<128xi32>
    %3 = "tt.addptr"(%0, %2) <{offset = 16 : i32}> : (!tt_ptr, tensor<128xi32>) -> !tt_ptr
    %4 = "ttg.global_scratch_alloc"() <{alignment = 64 : i32, nbytes = 256 : i32}> : () -> !tt ptr
    .
    etc.9
    : () -> tensor<128xi32>
    "scf.if"(%5) ({
      ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
        %6 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
        "scf.yield"(%6) : (tensor<128xi32>)
    }) {
      "scf.yield" = #scf_yield
    } : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %7 = "tt.call"(%4) <{callee = @min_max, operands = [#ttgCppMethodPointer, #ttgCppMethodPointer]}> : (!tt_ptr) -> (f32, f32)
    %8 = "tt.expand_dims"(%7) <{axis = 0 : i32}> : (f32, f32) -> tensor<1x2xi32>
    "tt.return"(%2, %8) : (!tt_ptr, tensor<1x2xi32>) -> ()
  }) : () -> (tensor<128x128xi32>, tensor<128x128xi32>)
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> (tensor<128x128xi32>, tensor<128x128xi32>)