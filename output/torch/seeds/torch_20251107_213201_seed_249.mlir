"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_id_0, !torch_vtensor_id_1) -> !torch_vtensor_id_2, sym_name = "complex_tensor_operations"}> ({
    ^bb0(%arg0: !torch_vtensor_id_0, %arg1: !torch_vtensor_id_1):
      %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor_id_0) -> !torch_vtensor_id_3
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_vtensor_id_4
      %2 = "torch.aten.eq.Tensor"(%0, %1) : (!torch_vtensor_id_3, !torch_vtensor_id_4) -> !torch_vtensor_id_5
      %3 = "torch.prim.NumToTensor.Scalar"(%1) : (!torch_vtensor_id_4) -> !torch_vtensor_id_0
      %4 = "torch.aten.add.Tensor"(%arg0, %arg1, %3) : (!torch_vtensor_id_0, !torch_vtensor_id_1, !torch_vtensor_id_0) -> !torch_vtensor_id_0
      %5 = "torch.aten.cat"(%arg0, %arg1, %1) : (!torch_vtensor_id_0, !torch_vtensor_id_1, !torch_vtensor_id_4) -> !torch_vtensor_id_0
      %6 = "torch.aten._shape_as_tensor"(%arg1) : (!torch_vtensor_id_1) -> !torch_vtensor_id_3
      %7 = "torch.aten.add.Tensor"(%6, %5, %3) : (!torch_vtensor_id_3, !torch_vtensor_id_0, !torch_vtensor_id_0) -> !torch_vtensor_id_3
      "func.return"(%7) : (!torch_vtensor_id_3) -> ()
  }) : () -> ()
}) : () -> ()

#AttributeAliases
= !torch_vtensor_id_0 !torch_vtensor_id_1
=  type tensor<1x3xi8>
#torch_vtensor_id_1 =  !torch_vtensor_id_2 !torch_vtensor_id_3
=  type tensor<2x3xi8>
#torch_vtensor_id_2 =  !torch_vtensor_id_4 !torch_vtensor_id_5
=  type tensor<3x3xi8>
#torch_vtensor_id_3 =  !torch_vtensor_id_6
#torch_vtensor_id_4 =  !torch_vtensor_id_7
#torch_vtensor_id_5 =  !torch_vtensor_id_8
#torch_vtensor_id_6 =  !torch_vtensor_id_9
#torch_vtensor_id_7 =  !torch_vtensor_id_10
#torch_vtensor_id_8 =  !torch_vtensor_id_11
#torch_vtensor_id_9 =  !torch_vtensor_id_12
#torch_vtensor_id_10 =  !torch_vtensor_id_13
#torch_vtensor_id_11 =  !torch_vtensor_id_14
#torch_vtensor_id_12 =  !torch_vtensor_id_15
#torch_vtensor_id_13 =  !torch_vtensor_id_16
#torch_vtensor_id_14 =  !torch_vtensor_id_17
#torch_vtensor_id_15 =  !torch_vtensor_id_18
#torch_vtensor_id_16 =  !torch_vtensor_id_19
#torch_vtensor_id_17 =  !torch_vtensor_id_20
#torch_vtensor_id_18 =  !torch_vtensor_id_21
#torch_vtensor_id_19 =  !torch_vtensor_id_22
#torch_vtensor_id_20 =  !torch_vtensor_id_23
#torch_vtensor_id_21 =  !torch_vtensor_id_24
#torch_vtensor_id_22 =  !torch_vtensor_id_25
#torch_vtensor_id_23 =  !torch_vtensor_id_26
#torch_vtensor_id_24 =  !torch_vtensor_id_27
#torch_vtensor_id_25 =  !torch_vtensor_id_28
#torch_vtensor_id_26 =  !torch_vtensor_id_29
#torch_vtensor_id_27 =  !torch_vtensor_id_30
#torch_vtensor_id_28 =  !torch_vtensor_id_31
#torch_vtensor_id_29 =  !torch_vtensor_id_32
#torch_vtensor_id_30 =  !torch_vtensor_id_33
#torch_vtensor_id_31 =  !torch_vtensor_id_34
#torch_vtensor_id_32 =  !torch_vtensor_id_35
#torch_vtensor_id_33 =  !torch_vtensor_id_36
#torch_vtensor_id_34 =  !torch_vtensor_id_37
#torch_vtensor_id_35 =  !torch_vtensor_id_38
#torch_vtensor_id_36 =  !torch_vtensor_id_39
#torch_vtensor_id_37 =  !torch_vtensor_id_40
#torch_vtensor_id_38 =  !torch_vtensor_id_41
#torch_vtensor_id_39 =  !torch_vtensor_id_42
#torch_vtensor_id_40 =  !torch_vtensor_id_43
#torch_vtensor_id_41 =  !torch_vtensor_id_44
#torch_vtensor_id_42 =  !torch_vtensor_id_45
#torch_vtensor_id_43 =  !torch_vtensor_id_46
#torch_vtensor_id_44 =  !torch_vtensor_id_47
#torch_vtensor_id_45 =  !torch_vtensor_id_48
#torch_vtensor_id_46 =  !torch_vtensor_id_49
#torch_vtensor_id_47 =  !torch_vtensor_id_50
#torch_vtensor_id_48 =  !torch_vtensor_id_51
#torch_vtensor_id_49 =  !torch_vtensor_id_52
#torch_vtensor_id_50 =  !torch_vtensor_id_53
#torch_vtensor_id_51 =  !torch_vtensor_id_54
#torch_vtensor_id_52 =  !torch_vtensor_id_55
#torch_vtensor_id_53 =  !torch_vtensor_id_56
#torch_vtensor_id_54 =  !torch_vtensor_id_57
#torch_vtensor_id_55 =  !torch_vtensor_id_58
#torch_vtensor_id_56 =  !torch_vtensor_id_59
#torch_vtensor_id_57 =  !torch_vtensor_id_60
#torch_vtensor_id_58 =  !torch_vtensor_id_61
#torch_vtensor_id_59 =  !torch_vtensor_id_62
#torch_vtensor_id_60 =  !torch_vtensor_id_63
#torch_vtensor_id_61 =  !torch_vtensor_id_64
#torch_vtensor_id_62 =  !torch_vtensor_id_65
#torch_vtensor_id_63 =  !torch_vtensor_id_66
#torch_vtensor_id_64 =  !torch_vtensor_id_67
#torch_vtensor_id_65 =  !torch_vtensor_id_68
#torch_vtensor_id_66 =  !torch_vtensor_id_69
#torch_vtensor_id_67 =  !torch_vtensor_id_70
#torch_vtensor_id_68 =  !torch_vtensor_id_71
#torch_vtensor_id_69 =  !torch_vtensor_id_72
#torch_vtensor_id_70 =  !torch_vtensor_id_73
#torch_vtensor_id_71 =  !torch_vtensor_id_74
#torch_vtensor_id_72 =  !torch_vtensor_id_75
#torch_vtensor_id_73 =  !torch_vtensor_id_76
#torch_vtensor_id_74 =  !torch_vtensor_id_77
#torch_vtensor_id_75 =  !torch_vtensor_id_78
#torch_vtensor_id_76 =  !torch_vtensor_id_79
#torch_vtensor_id_77 =  !torch_vtensor_id_80
#torch_vtensor_id_78 =  !torch_vtensor_id_81
#torch_vtensor_id_79 =  !torch_vtensor_id_82
#torch_vtensor_id_80 =  !torch_vtensor_id_83
#torch_vtensor_id_81 =  !torch_vtensor_id_84
#torch_vtensor