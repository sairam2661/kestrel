"builtin.module"() ({
  "func.func"() <{function_type = (memref<8x8xi32>, index, index) -> index, sym_name = "complex_indexing"}> ({
  ^bb0(%arg0: memref<8x8xi32>, %arg1: index, %arg2: index):
    %0 = "arith.constant"() <{value = 4 : index}> : () -> index
    %1 = "arith.addi"(%arg1, %0) <{overflowFlags = #arith_overflownone}> : (index, index) -> index
    %2 = "arith.cmpi"(%1, %0, "slt") : (index, index) -> i1
    %3 = "scf.if"(%2) ({
      ^bb1(%arg3: index):
        %4 = "memref.load"(%arg0, %arg3, %arg2) : (memref<8x8xi32>, index, index) -> i32
        "scf.yield"(%4) : (i32) -> ()
    }, {
      ^bb2:
        %4 = "arith.constant"() <{value = 0 : i32}> : () -> i32
        "scf.yield"(%4) : (i32) -> ()
    }) : (i1) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()