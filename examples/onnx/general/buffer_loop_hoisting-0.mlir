"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "test_buffer_loop_hoisting"}> ({
    %0 = "arith.constant"() <{value = 0 : i64}> : () -> i64
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 32 : index}> : () -> index
    %3 = "arith.constant"() <{value = 8 : index}> : () -> index
    "scf.for"(%1, %2, %3) ({
    ^bb0(%arg0: index):
      %4 = "arith.constant"() <{value = 18 : index}> : () -> index
      %5 = "arith.constant"() <{value = 6 : index}> : () -> index
      "scf.for"(%1, %4, %5) ({
      ^bb0(%arg1: index):
        %6 = "arith.constant"() <{value = 20 : index}> : () -> index
        %7 = "arith.constant"() <{value = 5 : index}> : () -> index
        "scf.for"(%1, %6, %7) ({
        ^bb0(%arg2: index):
          %8 = "memref.alloca"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<10x10xf32>
          %9 = "krnl.getref"(%8, %0, %1) : (memref<10x10xf32>, i64, index) -> memref<2x10xf32>
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

