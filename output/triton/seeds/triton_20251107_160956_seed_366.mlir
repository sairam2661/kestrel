"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "tensor_transformations"}> ({
    ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
      %0 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
      %1 = "tt.expand_dims"(%arg0, 1) : (tensor<128xi32>, i32) -> tensor<128x1xi32>
      %2 = "tt.expand_dims"(%arg1, 1) : (tensor<128xi32>, i32) -> tensor<128x1xi32>
      %3 = "tt.addptr"(%1, %2) : (tensor<128x1xi32>, tensor<128x1xi32>) -> tensor<128x1xi32>
      %4 = "tt.reduce"(%3, "tt.reduce_add") : (tensor<128x1xi32>, i32) -> tensor<128xi32>
      "tt.return"(%4) : (tensor<128xi32>) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (tensor<128xi32>) -> tensor<128xi32>, sym_name = "elementwise_operations"}> ({
    ^bb0(%arg0: tensor<128xi32>):
      %0 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
      %1 = "arith.constant"() <{value = dense<2> : tensor<128xi32>}> : () -> tensor<128xi32>
      %2 = "arith.muli"(%arg0, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %3 = "arith.addi"(%0, %2) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %4 = "arith.subi"(%3, %arg0) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      "tt.return"(%4) : (tensor<128xi32>) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (tensor<128xi32>) -> tensor<128xi32>, sym_name = "nested_operations"}> ({
    ^bb0(%arg0: tensor<128xi32>):
      %0 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
      %1 = "tt.expand_dims"(%arg0, 1) : (tensor<128xi32>, i32) -> tensor<128x1xi32>
      %2 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
      %3 = "tt.expand_dims"(%2, 0) : (tensor<32xi32>, i32) -> tensor<1x32xi32>
      %4 = "tt.addptr"(%1, %3) : (tensor<128x1xi32>, tensor<1x32xi32>) -> tensor<128x32xi32>
      %5 = "tt.reduce"(%4, "tt.reduce_add") : (tensor<128x32xi32>, i32) -> tensor<128xi32>
      "tt.return"(%5) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()