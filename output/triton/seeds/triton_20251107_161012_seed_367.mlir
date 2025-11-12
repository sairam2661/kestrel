"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "tensor_operations"}> ({
    ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
      %0 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
      %1 = "tt.expand_dims"(%arg0) <{axes = [0, 1]}> : (tensor<128xi32>) -> tensor<1x1x128xi32>
      %2 = "tt.addptr"(%arg1, %0) <{alignment = 16}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %3 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflownone}> : (tensor<1x1x128xi32>, tensor<128xi32>) -> tensor<1x1x128xi32>
      %4 = "tt.reduce"(%3) <{operation = "add", operands = [0, 1], dimensions = [0, 1]}> : (tensor<1x1x128xi32>) -> tensor<128xi32>
      %5 = "tt.call"() <{func = "@external_func", operands = [0]}> : (tensor<128xi32>) -> tensor<128xi32>
      "tt.return"(%5) : (tensor<128xi32>) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = () -> (), sym_name = "external_func"}> ({
    ^bb0:
      %0 = "tt.make_range"() <{end = 256 : i32, start = 128 : i32}> : () -> tensor<128xi32>
      "tt.return"(%0) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()