"builtin.module"() ({
  "func.func"() <{function_type = (!torchbool) -> !torchv32, sym_name = "nested_if_loops"}> ({
    ^bb0(%arg0: !torchbool):
      %0 = "torch.constant.int"() <{value = 12 : i64}> : () -> !torchint
      %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchint

      %2 = "torch.prim.If"(%arg0) ({
        ^bb0:
          %3 = "torch.constant.bool"() <{value = true}> : () -> !torchbool
          %4 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchint

          %5 = "torch.prim.Loop"(%0, %3, %4) ({
          ^bb0(%arg1: !torchint, %arg2: !torchint):
            %6 = "torch.aten.add.Tensor"(%arg2, %arg1, %1) : (!torchint, !torchint, !torchint) -> !torchint
            %7 = "torch.aten.eq.Tensor"(%arg1, %0) : (!torchint, !torchint) -> !torchbool
            "torch.prim.Loop.condition"(%7, %6) : (!torchbool, !torchint) -> ()
          }) : (!torchint, !torchbool, !torchint) -> !torchint

          "torch.prim.If.yield"(%5) : (!torchint) -> ()
      }, {
        ^bb0:
          %3 = "torch.constant.bool"() <{value = false}> : () -> !torchbool
          %4 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchint

          %5 = "torch.prim.Loop"(%0, %3, %4) ({
          ^bb0(%arg1: !torchint, %arg2: !torchint):
            %6 = "torch.aten.add.Tensor"(%arg2, %arg1, %1) : (!torchint, !torchint, !torchint) -> !torchint
            %7 = "torch.aten.eq.Tensor"(%arg1, %0) : (!torchint, !torchint) -> !torchbool
            "torch.prim.Loop.condition"(%7, %6) : (!torchbool, !torchint) -> ()
          }) : (!torchint, !torchbool, !torchint) -> !torchint

          "torch.prim.If.yield"(%5) : (!torchint) -> ()
      }) : (!torchbool) -> !torchint

      "func.return"(%2) : (!torchint) -> ()
  }) : () -> ()
}) : () -> ()