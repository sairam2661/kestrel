"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, i32) -> (tensor<32xi32>), sym_name = "complex_reduce"}> ({
    ^bb0(%arg0: tensor<32xi32>, %arg1: i32):
      %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %1 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
      %2 = "tt.expand_dims"(%1) <{axis = 1 : i32}> : (tensor<32xi32>) -> tensor<32x1xi32>
      %3 = "tt.broadcast"(%2) : (tensor<32x1xi32>) -> tensor<32x32xi32>
      %4 = "arith.cmpi"(%0, %arg1, "lt") : (i32, i32) -> i1
      "scf.if"(%4) ({
        %5 = "tt.reduce"(%arg0, %3) <{operation = "add"}> : (tensor<32xi32>, tensor<32x32xi32>) -> tensor<32xi32>
        "tt.return"(%5) : (tensor<32xi32>) -> ()
      }, {
        %6 = "tt.reduce"(%arg0, %3) <{operation = "mul"}> : (tensor<32xi32>, tensor<32x32xi32>) -> tensor<32xi32>
        "tt.return"(%6) : (tensor<32xi32>) -> ()
      }) : (i1) -> ()
  }) : () -> ()
}) : () -> ()