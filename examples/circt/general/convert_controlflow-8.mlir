"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, memref<1xi32>) -> (), sym_name = "main"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: memref<1xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.cmpi"(%arg0, %arg1) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    "scf.if"(%1) ({
      "memref.store"(%2, %arg2, %0) : (i32, memref<1xi32>, index) -> ()
      "scf.yield"() : () -> ()
    }, {
      "memref.store"(%arg0, %arg2, %0) : (i32, memref<1xi32>, index) -> ()
      "scf.yield"() : () -> ()
    }) : (i1) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

