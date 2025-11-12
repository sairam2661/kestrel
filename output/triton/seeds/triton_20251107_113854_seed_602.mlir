"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xf32>) -> (tensor<16xi32>, tensor<16xf32>), sym_name = "mixed_types_func"}> ({
    ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xf32>):
      %0 = "arith.constant"() <{value = dense<10> : tensor<16xi32>}> : () -> tensor<16xi32>
      %1 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
      %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %3 = "arith.addf"(%arg1, %1) : (tensor<16xf32>, f32) -> tensor<16xf32>
      %4 = "scf.if"(%arg0) ({
        %5 = "tt.reduce"(%2) <{reduction = "add"}> : (tensor<16xi32>) -> tensor<1xi32>
        "scf.yield"(%5) : (tensor<1xi32>) -> ()
      }, {
        %6 = "tt.reduce"(%3) <{reduction = "max"}> : (tensor<16xf32>) -> tensor<1xf32>
        "scf.yield"(%6) : (tensor<1xf32>) -> ()
      }) : (tensor<16xi32>) -> (tensor<1xi32>)
      "tt.return"(%2, %3) : (tensor<16xi32>, tensor<16xf32>) -> ()
  }) : () -> ()
}) : () -> ()