"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "complex_fold"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
    %0 = "arith.constant"() <{value = 1024 : i32}> : () -> i32
    %1 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
    %2 = "arith.cmpi"(%arg0, %arg1) <{predicate = 1 : i64}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi1>
    %3 = "scf.if"(%2) ({
      ^bb1(%arg2: tensor<32xi1>):
        %4 = "arith.addi"(%arg0, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
        "scf.yield"(%4) : (tensor<32xi32>) -> tensor<32xi32>
    }) {
      return
    .Label  = "^bb2(%arg3: tensor<32xi32>)"
    } : (tensor<32xi1>) -> tensor<32xi32>
    %5 = "arith.xori"(%arg0, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %6 = "arith.muli"(%5, %0) : (tensor<32xi32>, i32) -> tensor<32xi32>
    %7 = "tt.reduce"(%6) ({
      ^bb3(%arg4: tensor<32xi32>, %arg5: tensor<32xi32>):
        %8 = "arith.addi"(%arg4, %arg5) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
        "scf.yield"(%8) : (tensor<32xi32>) -> tensor<32xi32>
    }) : (tensor<32xi32>) -> tensor<32xi32>
    "tt.return"(%7) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()