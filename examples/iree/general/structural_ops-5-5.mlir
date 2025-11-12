"builtin.module"() ({
  "util.func"() <{function_type = (i32, tensor<1xf32>) -> (), sym_name = "scfWhileExpansion", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<1xf32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %2:2 = "scf.while"(%arg0, %arg1) ({
    ^bb0(%arg4: i32, %arg5: tensor<1xf32>):
      %4 = "arith.cmpi"(%arg4, %1) <{predicate = 2 : i64}> : (i32, i32) -> i1
      "scf.condition"(%4, %arg4, %arg1) : (i1, i32, tensor<1xf32>) -> ()
    }, {
    ^bb0(%arg2: i32, %arg3: tensor<1xf32>):
      %3 = "arith.addi"(%arg2, %0) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "scf.yield"(%3, %arg1) : (i32, tensor<1xf32>) -> ()
    }) : (i32, tensor<1xf32>) -> (i32, tensor<1xf32>)
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

