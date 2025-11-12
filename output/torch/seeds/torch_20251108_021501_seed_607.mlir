"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensorliteralValue2973633688206490238, !torchvtensorliteralValue1437264715228570755, !torchvtensorliteralValue1394694669417562578) -> !torchvtensorliteralValue1394694669417562578, sym_name = "torch_aten_index_select"}> ({
    ^bb0(%arg0: !torchvtensorliteralValue2973633688206490238, %arg1: !torchvtensorliteralValue1437264715228570755, %arg2: !torchvtensorliteralValue1394694669417562578):
      %0 = "torch.index_select"(%arg0, %arg1, %arg2) : (!torchvtensorliteralValue2973633688206490238, !torchvtensorliteralValue1437264715228570755, !torchvtensorliteralValue1394694669417562578) -> !torchvtensorliteralValue1394694669417562578
      "func.return"(%0) : (!torchvtensorliteralValue1394694669417562578) -> ()
  }) : () -> ()
}) : () -> ()