"builtin.module"() ({
  "func.func"() <{function_type = (memref<2xi32>, memref<2xi32>) -> (), sym_name = "main"}> ({
  ^bb0(%arg0: memref<2xi32>, %arg1: memref<2xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<2xi32>
    "scf.parallel"(%0, %1, %1) <{operandSegmentSizes = array<i32: 1, 1, 1, 0>}> ({
    ^bb0(%arg2: index):
      "scf.execute_region"() ({
        %6 = "memref.load"(%arg0, %1) : (memref<2xi32>, index) -> i32
        %7 = "memref.load"(%2, %1) : (memref<2xi32>, index) -> i32
        %8 = "arith.addi"(%6, %7) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
        "memref.store"(%8, %arg1, %1) : (i32, memref<2xi32>, index) -> ()
        "scf.yield"() : () -> ()
      }) : () -> ()
      "scf.execute_region"() ({
        %3 = "memref.load"(%arg0, %0) : (memref<2xi32>, index) -> i32
        %4 = "memref.load"(%2, %0) : (memref<2xi32>, index) -> i32
        %5 = "arith.addi"(%3, %4) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
        "memref.store"(%5, %arg1, %0) : (i32, memref<2xi32>, index) -> ()
        "scf.yield"() : () -> ()
      }) : () -> ()
      "scf.reduce"() : () -> ()
    }) {calyx.unroll = true} : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

