"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>, sym_name = "tensor_mix"}> ({
  ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
    %0 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
    %1 = "arith.constant"() <{value = dense<2> : tensor<64xi32>}> : () -> tensor<64xi32>
    %2 = "arith.muli"(%arg0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %3 = "arith.remsi"(%arg1, %0) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %4 = "arith.cmpi"(%2, %3) <{predicate = 4 : i64}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi1>
    %5 = "tt.addptr"(%arg0, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %6 = "arith.select"(%4, %5, %arg0) : (tensor<64xi1>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %7 = "scf.if"(%4) ({
      %8 = "tt.reduce"() ({
        ^bb0(%arg2: tensor<64xi32>, %arg3: tensor<64xi32>):
          %9 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
          "scf.yield"(%9) : (tensor<64xi32>) -> ()
      }) {identity = #arith_zero} : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      "scf.yield"(%8) : (tensor<64xi32>) -> tensor<64xi32>
    }, {
      "scf.yield"(%arg1) : () -> tensor<64xi32>
    }) : (tensor<64xi1>) -> tensor<64xi32>
    "tt.return"(%6) : (tensor<64xi32>) -> ()
  }) : () -> ()
}) : () -> ()