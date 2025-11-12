"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<i32>, tensor<i32>) -> tensor<i32>, sym_name = "ranked_reduce"}> ({
    ^bb0(%arg0: tensor<2x4xi32>, %arg1: tensor<2x4xi32>):
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<2x4xi32>, tensor<2x4xi32>) -> tensor<2x4xi32>
      %1 = "tt.reduce"(%0) <{operation = "add", identity = 0 : i32}> : (tensor<2x4xi32>) -> tensor<i32>
      "tt.return"(%1) : (tensor<i32>) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (tensor<i32>) -> tensor<3xi32>, sym_name = "expand_dims"}> ({
    ^bb0(%arg2: tensor<i32>):
      %0 = "tt.expand_dims"(%arg2) <{axis = 1}> : (tensor<i32>) -> tensor<3xi32>
      "tt.return"(%0) : (tensor<3xi32>) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = () -> tensor<1x2x4xi32>, sym_name = "global_alloc"}> ({
    ^bb0:
      %0 = "ttg.global_scratch_alloc"() <{size = 32 : i32}> : () -> tensor<1x2x4xi32>
      "tt.return"(%0) : (tensor<1x2x4xi32>) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (tensor<i32>, tensor<i32>) -> tensor<i32>, sym_name = "conditional_sub"}> ({
    ^bb0(%arg3: tensor<i32>, %arg4: tensor<i32>):
      %0 = "arith.cmpi"(%arg3, %arg4) <{predicate = "slt"}> : (tensor<i32>, tensor<i32>) -> tensor<i1>
      "scf.if"(%0) ({
        %1 = "arith.subi"(%arg3, %arg4) : (tensor<i32>, tensor<i32>) -> tensor<i32>
        "tt.return"(%1) : (tensor<i32>) -> ()
      }, {
        %2 = "arith.addi"(%arg3, %arg4) : (tensor<i32>, tensor<i32>) -> tensor<i32>
        "tt.return"(%2) : (tensor<i32>) -> ()
      }) : (tensor<i1>) -> tensor<i32>
  }) : () -> ()
}) : () -> ()