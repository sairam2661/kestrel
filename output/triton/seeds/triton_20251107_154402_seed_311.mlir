"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<10xi32>, tensor<10xi32>) -> (tensor<10xi32>, tensor<10xi32>), sym_name = "complex_reduce", sym_visibility = "public"}> ({
    ^bb0(%arg0: tensor<10xi32>, %arg1: tensor<10xi32>):
      %0 = "tt.make_range"() <{end = 10 : i32, start = 0 : i32}> : () -> tensor<10xi32>
      %1 = "tt.reduce"(%0, %arg0) <{operation = "add"}> : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
      %2 = "tt.reduce"(%0, %arg1) <{operation = "mul"}> : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
      %3 = "arith.subi"(%1, %2) <{overflowFlags = #arith_overflownone}> : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
      %4 = "tt.expand_dims"(%3) <{axis = 1 : i32}> : (tensor<10xi32>) -> tensor<10x1xi32>
      %5 = "tt.call"() <{callee = @helper_func}> : () -> tensor<10x1xi32>
      %6 = "tt.addptr"(%4, %5) : (tensor<10x1xi32>, tensor<10x1xi32>) -> tensor<10x1xi32>
      "tt.return"(%6, %1) : (tensor<10x1xi32>, tensor<10xi32>) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = () -> tensor<10x1xi32>, sym_name = "helper_func", sym_visibility = "private"}> ({
    %0 = "ttg.global_scratch_alloc"() <{alignment = 64 : i32, nbytes = 40 : i32}> : () -> tensor<10x1xi32>
    "tt.return"(%0) : (tensor<10x1xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32} : () -> ()