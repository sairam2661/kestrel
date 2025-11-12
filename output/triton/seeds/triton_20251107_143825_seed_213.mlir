"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_reduction"}> ({
    ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
      %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %1 = "tt.make_range"(%0, 16) : (i32, i32) -> tensor<16xi32>
      "scf.for"(%0, %0, %1) ({
      ^bb0(%arg2: i32):
        %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
        %3 = "arith.cmpi"(%arg2, 8) <{predicate = 4 : i64}> : (i32, i32) -> i1
        %4 = "arith.select"(%3, %arg0, %arg1) : (i1, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
        %5 = "tt.reduce"() ({
        ^bb0(%arg3: tensor<16xi32>, %arg4: tensor<16xi32>, %arg5: tensor<16xi32>):
          %6 = "arith.addi"(%arg3, %arg4) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
          "scf.yield"(%6) : (tensor<16xi32>) -> ()
        }) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
        "scf.yield"() : () -> ()
      }) {tt.num_stages = 2 : i32} : (i32, i32, tensor<16xi32>) -> ()
      "tt.return"(%4) : (tensor<16xi32>) -> ()
    }) : () -> ()
}) : () -> ()