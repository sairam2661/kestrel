"builtin.module"() ({
  "torch.global_slot"() <{sym_name = "slot0", sym_visibility = "private", typeBound = !torch.int}> : () -> ()
  "torch.global_slot.module_initializer"() ({
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    "torch.initialize.global_slots"(%1) <{slotSymNames = [@slot0]}> : (!torch.int) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "forward"}> ({
    %0 = "torch.global_slot.get"() <{slot = @slot0}> : () -> !torch.int
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

