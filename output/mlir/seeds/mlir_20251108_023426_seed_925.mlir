"builtin.module"() ({
  "spirv.func"() <{function_type = (tensor<2x3xi8>, tensor<3x2xi8>) -> tensor<2x2xi8>, sym_name = "matrix_multiply"}> ({
    ^bb0(%arg0: tensor<2x3xi8>, %arg1: tensor<3x2xi8>):
      %0 = "arith.constant"() <{value = dense<0> : tensor<2x2xi8>}> : () -> tensor<2x2xi8>
      %1 = "arith.constant"() <{value = 3 : index}> : () -> index
      "scf.for"(%c0 : index) ({
      ^bb1(%iv: index):
        "scf.for"(%c0 : index) ({
        ^bb2(%jv: index):
          "scf.for"(%c0 : index) ({
          ^bb3(%kv: index):
            %2 = "memref.load"(%arg0, %iv, %kv) : (tensor<2x3xi8>, index, index) -> i8
            %3 = "memref.load"(%arg1, %kv, %jv) : (tensor<3x2xi8>, index, index) -> i8
            %4 = "arith.muli"(%2, %3) : (i8, i8) -> i8
            %5 = "memref.load"(%0, %iv, %jv) : (tensor<2x2xi8>, index, index) -> i8
            %6 = "arith.addi"(%4, %5) : (i8, i8) -> i8
            "memref.store"(%6, %0, %iv, %jv) : (i8, tensor<2x2xi8>, index, index)
            "scf.yield"() : () -> ()
          }) : (index, index) -> ()
          "scf.yield"() : () -> ()
        }) : (index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index) -> ()
      %7 = "spirv.ReturnValue"(%0) : (tensor<2x2xi8>) -> ()
    }) : () -> ()
}) : () -> ()