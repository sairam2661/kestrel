"builtin.module"() ({
  "func.func"() <{function_type = (memref<4xi32>) -> (), sym_name = "main"}> ({
  ^bb0(%arg0: memref<4xi32>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "arith.constant"() <{value = true}> : () -> i1
    %4 = "arith.constant"() <{value = false}> : () -> i1
    %5 = "scf.if"(%3) ({
      %9 = "arith.addi"(%1, %1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "scf.yield"(%9) : (i32) -> ()
    }, {
      %8 = "arith.addi"(%0, %0) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "scf.yield"(%8) : (i32) -> ()
    }) : (i1) -> i32
    "scf.execute_region"() ({
      "scf.if"(%4) ({
        %7 = "arith.addi"(%5, %1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
        "memref.store"(%7, %arg0, %2) : (i32, memref<4xi32>, index) -> ()
        "scf.yield"() : () -> ()
      }, {
        %6 = "arith.addi"(%0, %0) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
        "memref.store"(%6, %arg0, %2) : (i32, memref<4xi32>, index) -> ()
        "scf.yield"() : () -> ()
      }) : (i1) -> ()
      "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

