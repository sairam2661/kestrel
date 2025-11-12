"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "unusual_interaction"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
    %0 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<32xi32>}> : () -> tensor<32xi32>
    %2 = "arith.remsi"(%arg0, %1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %3 = "arith.xori"(%arg1, %1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %4 = "arith.select"(%2, %0, %3) : (tensor<32xi32>, tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %5 = "arith.cmpi"(%4, %1) <{predicate = 2 : i64}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi1>
    %6 = "scf.if"(%5) ({
      ^bb1(%arg2: tensor<32xi1>):
        %7 = "tt.reduce"() <{operation = "add"}> ({
          ^bb2(%arg3: tensor<32xi32>):
            "tt.return"(%arg3) : (tensor<32xi32>) -> ()
        }) : () -> tensor<32xi32>
        "scf.yield"(%arg2, %7) : (tensor<32xi1>, tensor<32xi32>) -> ()
    }) : (tensor<32xi1>) -> (tensor<32xi1>, tensor<32xi32>)
    "tt.return"(%6#1) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32} : () -> ()