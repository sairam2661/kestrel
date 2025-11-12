"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "tensor_mix"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
    %0 = "tt.make_range"(%arg0) <{start = 0 : i32, end = 128 : i32}> : (tensor<128xi32>) -> tensor<128xi32>
    %1 = "tt.reduce"() <{operation = "mul"}> ({
    ^bb0(%arg2: tensor<128xi32>):
      %2 = "tt.expand_dims"(%arg2) <{axis = 1 : i32}> : (tensor<128xi32>) -> tensor<128x1xi32>
      "scf.yield"(%2) : (tensor<128x1xi32>) -> ()
    }) : (tensor<128xi32>) -> tensor<128x1xi32>
    %3 = "arith.addi"(%0, %1) : (tensor<128xi32>, tensor<128x1xi32>) -> tensor<128xi32>
    %4 = "scf.for"(%3, %arg1, "arith.addi") ({
    ^bb0(%arg3: tensor<128xi32>, %arg4: tensor<128xi32>):
      %5 = "arith.divsi"(%arg3, %arg4) <{overflowFlags = #arith_overflow_none}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %6 = "arith.remsi"(%arg3, %arg4) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      "scf.yield"(%5, %6) : (tensor<128xi32>, tensor<128xi32>) -> ()
    }) {tt.num_stages = 2 : i32} : (tensor<128xi32>, tensor<128xi32>, tensor<128xi32>, tensor<128xi32>) -> ()
    %7 = "arith.cmpi"(%4, %arg0) <{predicate = "eq"}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    "tt.return"(%7) : (tensor<128xi1>) -> ()
  }) : () -> ()
}) : () -> ()