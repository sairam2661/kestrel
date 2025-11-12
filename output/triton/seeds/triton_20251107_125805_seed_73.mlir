"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, i1, tensor<128xi32>) -> (tensor<128xi32>, tensor<128xi32>), sym_name = "complex_if_else_reduce"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: i1, %arg2: tensor<128xi32>):
    %0 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %1 = "tt.make_range"() <{end = 256 : i32, start = 128 : i32}> : () -> tensor<128xi32>
    %2 = "arith.subi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %3 = "scf.if"(%arg1) ({
      %4 = "tt.expand_dims"(%2) <{axis = 1 : i32}> : (tensor<128xi32>) -> tensor<128x1xi32>
      "scf.yield"(%4) : (tensor<128x1xi32>) -> ()
    }, {
      %5 = "tt.addptr"(%0, %1) <{alignment = 1}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      "scf.yield"(%5) : (tensor<128xi32>) -> ()
    }) : (i1) -> tensor<128x1xi32>
    %6 = "tt.reduce"(%3, %arg2) ({
      ^bb1(%arg3: tensor<128x1xi32>, %arg4: tensor<128xi32>):
        %7 = "arith.addsi"(%arg3, %arg4) <{overflowFlags = #arith_overflownone}> : (tensor<128x1xi32>, tensor<128xi32>) -> tensor<128x1xi32>
        "scf.yield"(%7) : (tensor<128x1xi32>) -> ()
    }) : (tensor<128x1xi32>, tensor<128xi32>) -> tensor<128x1xi32>
    %8 = "tt.reduce"(%3, %arg0) ({
      ^bb2(%arg5: tensor<128x1xi32>, %arg6: tensor<128xi32>):
        %9 = "arith.muli"(%arg5, %arg6) <{overflowFlags = #arith_overflownone}> : (tensor<128x1xi32>, tensor<128xi32>) -> tensor<128x1xi32>
        "scf.yield"(%9) : (tensor<128x1xi32>) -> ()
    }) : (tensor<128x1xi32>, tensor<128xi32>) -> tensor<128x1xi32>
    "tt.return"(%6, %8) : (tensor<128x1xi32>, tensor<128x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()