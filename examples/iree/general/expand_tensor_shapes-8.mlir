"builtin.module"() ({
  "util.func"() <{function_type = (tensor<?xf32>, i32) -> (), sym_name = "scf_while", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<?xf32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2:2 = "scf.while"(%0, %arg0) ({
    ^bb0(%arg4: i32, %arg5: tensor<?xf32>):
      %6 = "arith.cmpi"(%arg4, %arg1) <{predicate = 2 : i64}> : (i32, i32) -> i1
      "scf.condition"(%6, %arg4, %arg5) : (i1, i32, tensor<?xf32>) -> ()
    }, {
    ^bb0(%arg2: i32, %arg3: tensor<?xf32>):
      %4 = "arith.addi"(%arg2, %1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %5 = "arith.addf"(%arg3, %arg3) <{fastmath = #arith.fastmath<none>}> : (tensor<?xf32>, tensor<?xf32>) -> tensor<?xf32>
      "scf.yield"(%arg2, %5) : (i32, tensor<?xf32>) -> ()
    }) : (i32, tensor<?xf32>) -> (i32, tensor<?xf32>)
    %3 = "util.optimization_barrier"(%2#1) : (tensor<?xf32>) -> tensor<?xf32>
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

