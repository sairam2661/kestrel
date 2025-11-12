"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<10xi32>) -> tensor<11xi32>, sym_name = "expand_test", sym_visibility = "public"}> ({
  ^bb1(%arg1: i32, %arg2: tensor<10xi32>):
    %0 = "tt.make_range"() <{end = 11 : i32, start = 0 : i32}> : () -> tensor<11xi32>
    %1 = "tt.expand_dims"(%arg2, 0) : (tensor<10xi32>, i32) -> tensor<1x10xi32>
    %2 = "tt.addptr"(%arg2, %0) : (tensor<10xi32>, tensor<11xi32>) -> tensor<11xi32>
    %3 = "scf.if"(%arg1) ({
      ^bb1(%arg3: i1):
        %4 = "arith.cmpi"(%0, %arg2) <{predicate = 4 : i64}> : (tensor<11xi32>, tensor<10xi32>) -> tensor<11xi1>
        scf.yield %4 : tensor<11xi1>
      ^bb2(%arg4: i1):
        %5 = "arith.subi"(%0, %arg2) : (tensor<11xi32>, tensor<10xi32>) -> tensor<11xi32>
        scf.yield %5 : tensor<11xi32>
    }) : (i1) -> tensor<11xi1>
    "tt.return"(%2) : (tensor<11xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-warps" = 2 : i32} : () -> ()