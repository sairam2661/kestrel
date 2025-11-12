"builtin.module"() ({
  "func.func"() <{function_type = (i32, memref<4xi32>) -> (i32, memref<4xi32>), sym_name = "complexMix"}> ({
  ^bb0(%arg0: i32, %arg1: memref<4xi32>):
    %cst = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %load = "memref.load"(%arg1) <{indices = [0 : index]}> : (memref<4xi32>, index) -> i32
    %add = "arith.addi"(%load, %cst) : (i32, i32) -> i32
    %store = "memref.store"(%add, %arg1, %cst) : (i32, memref<4xi32>, index)
    %cmp = "arith.cmpi"("sge", %add, %cst) : (i32, i32) -> i1
    %br = "scf.if"(%cmp) ({
      %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      "scf.yield"(%1) : (i32) -> ()
    }, {
      %2 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      "scf.yield"(%2) : (i32) -> ()
    }) : (i1) -> (i32)
    "func.return"(%br, %arg1) : (i32, memref<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()