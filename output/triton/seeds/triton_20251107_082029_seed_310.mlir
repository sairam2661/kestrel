"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> tensor<i1>, sym_name = "tensor_compare_reduce"}> ({
  ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
    %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = 4 : i64}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi1>
    %1:1 = "tt.reduce"(%0) <{operation = "add"}> ({
    ^bb1(%arg2: i1, %arg3: i1):
      %2 = "arith.xori"(%arg2, %arg3) : (i1, i1) -> i1
      "scf.yield"(%2) : (i1) -> (i1)
    }) : (tensor<64xi1>) -> (i1)
    "tt.return"(%1#0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()