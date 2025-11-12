"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5xi1>, memref<5xi8>) -> tensor<5xi1>, sym_name = "complex_nested_scf"}> ({
  ^bb0(%arg0: tensor<5xi1>, %arg1: memref<5xi8>):
    "scf.for"(%c0 : index) ({
      ^bb1(%iv: index):
        %0 = "arith.cmpi"(%iv, %c4) <{predicate = "slt"}> : (index, index) -> i1
        "scf.if"(%0) ({
          ^bb2:
            %1 = "memref.load"(%arg1, %iv) : (memref<5xi8>, index) -> i8
            %2 = "arith.addi"(%1, %c1) : (i8, i8) -> i8
            "memref.store"(%2, %arg1, %iv) : (i8, memref<5xi8>, index) -> ()
        }) : (i1) -> ()
        %3 = "arith.addi"(%iv, %c1) : (index, index) -> index
        "scf.yield"(%3) : (index) -> ()
      }) : (index) -> ()
    "func.return"(%arg0) : (tensor<5xi1>) -> ()
  }) : () -> ()
}) : () -> ()