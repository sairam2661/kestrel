"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 32 : i32}, {tt.divisibility = 16 : i32}], function_type = (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>, sym_name = "complex_reduce"}> ({
    %0 = "tt.global_scratch_alloc"() <{size = 256 : i32}> : () -> !ttg_ptr
    %1 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
    %2 = "tt.make_range"() <{end = 128 : i32, start = 64 : i32}> : () -> tensor<64xi32>
    %3 = "arith.cmpi"(%1, %2) <{predicate = 8 : i64}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi1>
    %4 = "scf.if"(%3) ({
      ^bb1(%arg3: tensor<64xi1>):
        %5 = "tt.addptr"(%0, %1) : (!ttg_ptr, tensor<64xi32>) -> !tt_ptr
        %6 = "tt.call"() <{func = @add_tensors, operands = ["%arg0", "%arg1"]}> : () -> tensor<64xi32>
        "tt.return"(%6) : (tensor<64xi32>) -> ()
    }) {
      success = "tf.yield" : () -> ()
    } : (tensor<64xi1>) -> tensor<64xi32>
    %7 = "tt.reduce"(%arg0, %arg1) <{operation = #tt_reduce_add}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %8 = "arith.subi"(%4, %7) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    "tt.return"(%8) : (tensor<64xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32} : () -> ()