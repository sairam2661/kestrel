"builtin.module"() ({
  "func.func"() <{function_type = (index, memref<2x2xi32>) -> (index, memref<2x2xi32>), sym_name = "mixed_dialects"}> ({
  ^bb0(%arg0: index, %arg1: memref<2x2xi32>):
    %0 = "arith.addi"(%arg0, %arg0) : (index, index) -> index
    "scf.for"() <{lower_bound = 0 : index, upper_bound = 4 : index, step = 1 : index}> ({
    ^bb1(%iv: index):
      "arith.cmpi"(%iv, %iv) <{predicate = "eq"}> : (index, index) -> i1
      "scf.yield"() : () -> ()
    }) : () -> ()
    "scf.if"(%arg1) ({
    ^bb2(%arg2: memref<2x2xi32>):
      "arith.addi"(%0, %0) : (index, index) -> index
      "scf.yield"(%arg2) : (memref<2x2xi32>) -> ()
    }, {
    ^bb3(%arg3: memref<2x2xi32>):
      "arith.addi"(%0, %0) : (index, index) -> index
      "scf.yield"(%arg3) : (memref<2x2xi32>) -> ()
    }) : (memref<2x2xi32>) -> memref<2x2xi32>
    "func.return"(%0, %arg1) : (index, memref<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()