"builtin.module"() ({
  "func.func"() <{function_type = (memref<8x32xi8>, memref<8x32xi8>, memref<8x32xi8>, index) -> (), sym_name = "complex_combine"}> ({
  ^bb0(%arg0: memref<8x32xi8>, %arg1: memref<8x32xi8>, %arg2: memref<8x32xi8>, %arg3: index):
    %c0_i32 = "arith.constant"() <{value = 0 : index}> : () -> index
    %c1_i32 = "arith.constant"() <{value = 1 : index}> : () -> index
    %c4_i32 = "arith.constant"() <{value = 4 : index}> : () -> index
    %c8_i32 = "arith.constant"() <{value = 8 : index}> : () -> index
    %c32_i32 = "arith.constant"() <{value = 32 : index}> : () -> index
    %scf_for1 = "scf.for"(%c0_i32, %c32_i32, %c4_i32) ({
    ^bb1(%i: index):
      %scf_for2 = "scf.for"(%c0_i32, %c8_i32, %c4_i32) ({
      ^bb2(%j: index):
        %0 = "memref.load"(%arg0, %i, %j) : (memref<8x32xi8>, index, index) -> i8
        %1 = "memref.load"(%arg1, %i, %j) : (memref<8x32xi8>, index, index) -> i8
        %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
        %3 = "memref.load"(%arg2, %i, %j) : (memref<8x32xi8>, index, index) -> i8
        %4 = "arith.sdivi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
        "memref.store"(%4, %arg0, %i, %j) : (i8, memref<8x32xi8>, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()