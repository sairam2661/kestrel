"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, i32) -> tensor<128xi32>, sym_name = "shuffle"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: i32):
    %0 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %1 = "arith.cmpi"(%0, %arg1) <{predicate = 0 : i64}> : (tensor<128xi32>, i32) -> tensor<128xi1>
    %2 = "scf.if"(%1) ({
      %3 = "tt.addptr"(%arg0, %arg1) : (tensor<128xi32>, i32) -> tensor<128xi32>
      "scf.yield"(%3) : (tensor<128xi32>) -> ()
    }, {
      %4 = "arith.subi"(%arg0, %arg1) : (tensor<128xi32>, i32) -> tensor<128xi32>
      "scf.yield"(%4) : (tensor<128xi32>) -> ()
    }) : (tensor<128xi1>) -> tensor<128xi32>
    "tt.return"(%2) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()