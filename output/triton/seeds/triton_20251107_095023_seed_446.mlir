"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<1024xi32>, tensor<512xi32>, i1) -> tensor<1024xi32>, sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: tensor<1024xi32>, %arg1: tensor<512xi32>, %arg2: i1):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "scf.for"(%0, %arg0, %0) ({
    ^bb0(%arg3: i32):
      %2 = "arith.select"(%arg2, %arg0, %arg1) : (i1, tensor<1024xi32>, tensor<512xi32>) -> tensor<1024xi32>
      %3 = "tt.make_range"(%arg3, %0) <{step = 2 : i32}> : (i32, i32) -> tensor<1024xi32>
      %4 = "arith.addi"(%arg3, %3) : (i32, tensor<1024xi32>) -> tensor<1024xi32>
      "scf.yield"() : () -> ()
    }) {tt.num_stages = 2 : i32} : (i32, tensor<1024xi32>, i32) -> ()
    %5 = "scf.if"(%arg2) ({
      "scf.yield"(%arg0) : (tensor<1024xi32>) -> ()
    }, {
      %6 = "arith.xori"(%arg0, %arg1) : (tensor<1024xi32>, tensor<512xi32>) -> tensor<1024xi32>
      "scf.yield"(%6) : (tensor<1024xi32>) -> ()
    }) : (i1) -> tensor<1024xi32>
    "tt.return"(%5) : (tensor<1024xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 4 : i32, "ttg.num-warps" = 4 : i32} : () -> ()