"builtin.module"() ({
  "func.func"() <{function_type = (i32, memref<2x2xi8>) -> (i32, memref<2x2xi8>), sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: i32, %arg1: memref<2x2xi8>):
    %0 = "arith.muli"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "memref.alloc"() <{alignment = 32, memref_type = memref<2x2xi8>}> : () -> memref<2x2xi8>
    "scf.for"() <{indvar = 0 : index, upper_bound = 2 : index, step = 1 : index}> ({
    ^bb1(%iv: index):
      "scf.for"() <{indvar = 0 : index, upper_bound = 2 : index, step = 1 : index}> ({
      ^bb2(%jv: index):
        %3 = "arith.addi"(%iv, %jv) : (index, index) -> index
        %4 = "arith.extui"(%3) : (index) -> i32
        %5 = "arith.addi"(%0, %4) : (i32, i32) -> i32
        "memref.store"(%5, %2, %iv, %jv) : (i32, memref<2x2xi8>, index, index) -> ()
      }) {successor_labels = ["^bb1"]} : () -> ()
    }) {successor_labels = ["^bb3"]} : () -> ()
    %6 = "memref.load"(%2, %1, %1) : (memref<2x2xi8>, index, index) -> i8
    %7 = "arith.extui"(%6) : (i8) -> i32
    %8 = "arith.addi"(%0, %7) : (i32, i32) -> i32
    "func.return"(%8, %2) : (i32, memref<2x2xi8>) -> ()
  }) : () -> ()
}) : () -> ()