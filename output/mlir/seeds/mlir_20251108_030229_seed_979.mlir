"builtin.module"() ({
  "func.func"() <{function_type = (memref<100x100xf32>, index) -> (), sym_name = "nested_loops_with_conditionals"}> ({
  ^bb0(%arg0: memref<100x100xf32>, %arg1: index):
    "scf.for"(%arg1, %arg1, %arg1) ({
    ^bb0(%arg2: index):
      "scf.if"(%arg2) ({
      ^bb0:
        %0 = "arith.constant"() <{value = 10 : index}> : () -> index
        "scf.for"(%arg2, %arg2, %0) ({
        ^bb0(%arg3: index):
          %1 = "arith.addf"(%arg3, %arg3) <{overflowFlags = #arith_overflow_modeAttr}> : (index, index) -> index
          "memref.store"(%1, %arg0, %arg2, %arg3) : (index, memref<100x100xf32>, index, index) -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) {
      } : (index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()