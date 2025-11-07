"builtin.module"() ({
  "func.func"() <{function_type = (i32, memref<120xi32>) -> (), sym_name = "main"}> ({
  ^bb0(%arg0: i32, %arg1: memref<120xi32>):
    %0 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<120xi32>
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %4 = "arith.remui"(%arg0, %3) : (i32, i32) -> i32
    %5 = "arith.cmpi"(%arg0, %4) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "scf.if"(%5) ({
      "memref.store"(%arg0, %0, %1) : (i32, memref<120xi32>, index) -> ()
      "scf.yield"() : () -> ()
    }, {
      "memref.store"(%4, %arg1, %2) : (i32, memref<120xi32>, index) -> ()
      "scf.yield"() : () -> ()
    }) : (i1) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

