"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_op_combos"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %1 = "arith.xori"(%0, %arg1) : (i32, i32) -> i32
      %2 = "arith.divsi"(%1, %arg0) : (i32, i32) -> i32
      %3 = "arith.cmpi"(%2, %arg1) <{predicate = 4 : i64}> : (i32, i32) -> i1
      scf.if %3 : i1 -> ()  region_attr_index  .getParentOpIndexInParentRegionIndex
      %4: memref<4xi32> initialize
      .block0:
        memref<4xi32> store
        .block1:
          memref<4xi32> load
          .block2:
          memref<4xi32> dealloc
          .block3:
          memref<4xi32> dealloc
          .block4:
          memref<4xi32> dealloc
          .block5:
          memref<4xi32> dealloc
          .block6:
          memref<4xi32> dealloc
          .block7:
          memref<4xi32> dealloc
          .block8:
          memref<4xi32> dealloc
          .block9:
          memref<4xi32> dealloc
          .block10:
          memref<4xi32> dealloc
          .block11:
          memref<4xi32> dealloc
          .block12:
          memref<4xi32> dealloc
          .block13:
          memref<4xi32> dealloc
          .block14:
          memref<4xi32> dealloc
          .block15:
          memref<4xi32> dealloc
          .block16:
          memref<4xi32> dealloc
          .block17:
          memref<4xi32> dealloc
          .block18:
          memref<4xi32> dealloc
          .block19:
          memref<4xi32> dealloc
          .block20:
          memref<4xi32> dealloc
          .block21:
          memref<4xi32> dealloc
          .block22:
          memref<4xi32> dealloc
          .block23:
          memref<4xi32> dealloc
          .block24:
          memref<4xi32> dealloc
          .block25:
          memref<4xi32> dealloc
          .block26:
          memref<4xi32> dealloc
          .block27:
          memref<4xi32> dealloc
          .block28:
          memref<4xi32> dealloc
          .block29:
          memref<4xi32> dealloc
          .block30:
          memref<4xi32> dealloc
          .block31:
          memref<4xi32> dealloc
          .block32:
          memref<4xi32> dealloc
          .block33:
          memref<4xi32> dealloc
          .block34:
          memref<4xi32> dealloc
          .block35:
          memref<4xi32> dealloc
          .block36:
          memref<4xi32> dealloc
          .block37:
          memref<4xi32> dealloc
          .block38:
          memref<4xi32> dealloc
          .block39:
          memref<4xi32> dealloc
          .block40:
          memref<4xi32> dealloc
          .block41:
          memref<4xi32> dealloc
          .block42:
          memref<4xi32> dealloc
          .block43:
          memref<4xi32> dealloc
          .block44:
          memref<4xi32> dealloc
          .block45:
          memref<4xi32> dealloc
          .block46:
          memref<4xi32> dealloc
          .block47:
          memref<4xi32> dealloc
          .block48:
          memref<4xi32> dealloc
          .block49:
          memref<4xi32> dealloc
          .block50:
          memref<4xi32> dealloc
          .block51:
          memref<4xi32> dealloc
          .block52:
          memref<4xi32> dealloc
          .block53:
          memref<4xi32> dealloc
          .block54:
          memref<4xi32> dealloc
          .block55:
          memref<4xi32> dealloc
          .block56:
          memref<4xi32> dealloc
          .block57:
          memref<4xi32> dealloc
          .block58:
          memref<4xi32> dealloc
          .block59:
          memref<4xi32> dealloc
          .block60:
          memref<4xi32> dealloc
          .block61:
          memref<4xi32> dealloc
          .block62:
          memref<4xi32> dealloc
          .block63:
          memref<4xi32> dealloc
          .block64:
          memref<4xi32> dealloc
          .block65:
          memref<4xi32> dealloc
          .block66:
          memref<4xi32> dealloc
          .block67:
          memref<4xi32> dealloc
          .block68:
          memref<4xi32> dealloc
          .block69:
          memref<4xi32> dealloc
          .block70:
          memref<4xi32> dealloc
          .block71:
          memref<4xi32> dealloc
          .block72:
          memref<4xi32> dealloc
          .block73:
          memref<4xi32> dealloc
          .block74:
          memref<4xi32> dealloc
          .block75:
          memref<4xi32> dealloc
          .block76:
          memref<4xi32> dealloc
          .block77:
          memref<4xi32> dealloc
          .block78:
          memref<4xi32> dealloc
          .block79:
          memref<4xi32> dealloc
          .block80:
          memref<4xi32> dealloc
          .block81:
          memref<4xi32> dealloc
          .block82:
          memref<4xi32> dealloc
          .block83:
          memref<4xi32> dealloc
          .block84:
          memref<4xi32> dealloc
          .block85:
          memref<4xi32> dealloc
          .block86:
          memref<4xi32> dealloc
          .block87:
          memref<4xi32> dealloc
          .block88:
          memref<4xi32> dealloc
          .block89:
          memref<4xi32> dealloc
          .block90:
          memref<4xi32> dealloc
          .block91:
          memref<4xi32> dealloc
          .block92:
          memref<4xi32> dealloc
          .block93:
          memref<4xi32> dealloc
          .block94:
          memref<4xi32> dealloc
          .block95:
          memref<4xi32> dealloc
          .block96:
          memref<4xi32> dealloc
          .block97:
          memref<4xi32> dealloc
          .block98:
          memref<4xi32> dealloc
          .block99:
          memref<4xi32> dealloc
          .block100:
          memref<4xi32> dealloc
          .block101:
          memref<4xi32> dealloc
          .block102:
          memref<4xi32> dealloc
          .block103:
          memref<4xi32> dealloc
          .block104:
          memref<4xi32> dealloc
          .block105:
          memref<4xi32> dealloc
          .block106:
          memref<4xi3