"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    %1 = "scf.for"(%c0 : index) ({
      ^bb1(%iv: index):
        %2 = "arith.addi"(%iv, %iv) : (index, index) -> index
        %3 = "arith.cmpi"("slt", %2, %c4) : (index, index) -> i1
        "scf.yield"(%3) : (i1) -> (i1)
      }) {
      } : (index) -> () attributes
      .result2
    %4: i1,  i5,  i6,  i7,  i8,  i9,  i10,  i11,  i12,  i13,  i14,  i15,  i16,  i17,  i18,  i19,  i20,  i21,  i22,  i23,  i24,  i25,  i26,  i27,  i28,  i29,  i30,  i31,  i32,  i33,  i34,  i35,  i36,  i37,  i38,  i39,  i40,  i41,  i42,  i43,  i44,  i45,  i46,  i47,  i48,  i49,  i50,  i51,  i52,  i53,  i54,  i55,  i56,  i57,  i58,  i59,  i60,  i61,  i62,  i63,  i64,  i65,  i66,  i67,  i68,  i69,  i70
    %5 = "arith.cmpi"("slt", %1, %c4) : (index, index) -> i1
    "scf.if"(%5) ({
      ^bb2:
        %6 = "arith.addi"(%1, %1) : (index, index) -> index
        "func.return"(%0) : (tensor<4x4xi32>) -> ()
      }) {
      } : (i1) -> ()
    "func.return"(%0) : (tensor<4x4xi32>) -> ()
  }) : (tensor<4x4xi32>, tensor<4x4xi32>) -> (tensor<4x4xi32>)
}) : () -> ()