"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>, sym_name = "mixed_arith_and_control"}> ({
  ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %2 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
    %3 = "scf.for"() <{upperBound = 64 : i32, lowerBound = 0 : i32, step = 1 : i32}> ({
      ^bb1(%iv: i32):
        %4 = "arith.constant"() <{value = 2 : i32}> : () -> i32
        %5 = "arith.divsi"(%0, %4) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, i32) -> tensor<64xi32>
        %6 = "arith.cmpi"(%iv, %1) <{predicate = 4 : i64}> : (i32, i32) -> i1
        "scf.if"(%6) ({
          "scf.yield"() : () -> ()
        }, {
          "scf.yield"() : () -> ()
        }) : (i1) -> ()
        "scf.yield"() : () -> ()
    }) : () -> ()
    "tt.return"(%0) : (tensor<64xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-warps" = 4 : i32} : () -> ()